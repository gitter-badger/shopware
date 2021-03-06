<?php

namespace Element\Responsive;

class HeaderCart extends \Element\Emotion\HeaderCart
{
    /**
     * @var array $selector
     */
    protected $selector = array('css' => 'li.navigation--entry.entry--cart');

    /**
     * Returns an array of all css selectors of the element/page
     * @return array
     */
    public function getCssSelectors()
    {
        return array(
            'quantity' => 'span.cart--quantity',
            'amount' => 'span.cart--amount',
            'link' => 'a.cart--link'
        );
    }
}
