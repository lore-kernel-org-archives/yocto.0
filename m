Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D15C2E00D26; Mon,  6 Nov 2017 23:42:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B78C5E00D20
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 23:42:48 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 23:42:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,357,1505804400"; 
	d="scan'208,217";a="172440991"
Received: from skho-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.71.44])
	by fmsmga005.fm.intel.com with ESMTP; 06 Nov 2017 23:42:44 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amanda Brindle <amanda.r.brindle@intel.com>
Date: Tue, 07 Nov 2017 20:42:40 +1300
Message-ID: <21600272.tjgxrlsVxO@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <8559561.lCF96KOOkO@peggleto-mobl.ger.corp.intel.com>
References: <cover.1510013944.git.amanda.r.brindle@intel.com>
	<cf75876e6a0b6df11656989ff729f2d4fdaaf5fb.1510013944.git.amanda.r.brindle@intel.com>
	<8559561.lCF96KOOkO@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][patch v2 1/1] recipes.html: Require keyword for recipe search
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Nov 2017 07:42:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 7 November 2017 8:27:03 PM NZDT Paul Eggleton wrote:
> I'm not sure <error> is a valid HTML tag. Looking at the bootstrap docs I
> think we should actually be using its error state and help text
> functionality (see "Validation states" on http://getbootstrap.com/2.3.2/
> base-css.html#forms ). I tested it and to fix the layout apparently we need
> to rearrange the tags so that <form> is immediately under the row-fluid div,
> i.e. it should be:
> 
>                 <div class="row-fluid">
>                     <form ...>
>                         <div class="control-group">
>                             <div class="controls" id="searchfield">
>                                 <div class="input-append">
>                                     <input ... />
>                                     <button ...>search</button>
>                                 </div>
>                                 <span class="help-inline" id="errortext">
>                                 </span>
>                             </div>
>                         </div>
>                     </form>
>                 </div>

Hmm, actually that's wrong, we want the id on the control-group div not the
controls one i.e.

                <div class="row-fluid">
                    <form ...>
                        <div class="control-group" id="searchfield">
                            <div class="controls">
                                <div class="input-append">
                                    <input ... />
                                    <button ...>search</button>
                                </div>
                                <span class="help-inline" id="errortext"></span>
                            </div>
                        </div>
                    </form>
                </div>

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

