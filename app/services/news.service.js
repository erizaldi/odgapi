'use strict';

import models from '../models';
const News = models.News;

/**
 * Find all posts by a Post in the db
 *
 **/
export function findAll({ limit = 50, offset = 0, userName = '', ...otherOptions } = {}) {
    return News.findAll({
        limit: Number(limit),
        offset: Number(offset),
        where: {
            ...otherOptions
        }
    });
};
/**
 * Find post by id
 * @param newsId id of the post to find
 **/
export function findById(newsId) {
    return News.findById(newsId);
};

/**
 * Create a new post
 * @param news object literal containing info about a post
 * - title {String}
 * - content {String}
 * - userId {String}
 * - status: draf vs published
 **/
export function create(news) {
    return Post.create(news);
};

/**
 * Update a post
 * @param news {Object} object literal containing info about a post
 * - id {UUID} required
 * - title {String}
 * - content {String}
 * - userId {String}
 * - status: draf vs published
 **/
export function update(news) {
    return News
        .findById(news.id)
        .then((p) => {
            return p.update(news);
        });

};
/**
 * Delete a post by id
 * @param newsId {UUID}
 **/
export function deletePost(newsId) {
    return News.destroy({
        where: {
            id: newsId
        }
    });
};