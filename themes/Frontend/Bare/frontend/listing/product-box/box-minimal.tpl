{extends file="frontend/listing/product-box/box-basic.tpl"}

{namespace name="frontend/listing/box_article"}

{block name='frontend_listing_box_article_description'}{/block}

{block name='frontend_listing_box_article_actions'}{/block}

{block name='frontend_listing_box_article_price'}
    <div class="product--price-outer">
        <div class="product--price">

            {* Discount price *}
            {block name='frontend_listing_box_article_price_discount'}
                {if $sArticle.pseudoprice|number > $sArticle.price|number}
                    <span class="price--discount is--nowrap">
                        {$sArticle.pseudoprice|currency}
                        {s name="Star"}{/s}
                    </span>
                {/if}
            {/block}

            {* Default price *}
            {block name='frontend_listing_box_article_price_default'}
                <span class="price--default is--nowrap{if $sArticle.pseudoprice|number > $sArticle.price|number} is--discount{/if}">
                    {if $sArticle.priceStartingFrom && !$sArticle.liveshoppingData}{s name='ListingBoxArticleStartsAt'}{/s} {/if}
                    {$sArticle.price|currency}
                    {s name="Star"}{/s}
                </span>
            {/block}
        </div>
    </div>
{/block}

