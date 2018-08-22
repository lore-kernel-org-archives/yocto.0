Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21080E0079D; Wed, 22 Aug 2018 07:57:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [178.33.111.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2403 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Aug 2018 07:57:24 PDT
Received: from 1.mo173.mail-out.ovh.net (1.mo173.mail-out.ovh.net
	[178.33.111.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2DEFE00566
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:57:24 -0700 (PDT)
Received: from player798.ha.ovh.net (unknown [10.109.143.208])
	by mo173.mail-out.ovh.net (Postfix) with ESMTP id BD1C9D2684
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 15:39:13 +0200 (CEST)
Received: from [192.168.4.33] (85-222-117-222.dynamic.chello.pl
	[85.222.117.222]) (Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player798.ha.ovh.net (Postfix) with ESMTPSA id 7AEDB5400AA
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 15:39:13 +0200 (CEST)
To: yocto@yoctoproject.org
References: <CAE5v_r+EZ97Lhjwwo4i7dwy1M7VRm+Lq6pZUsgyi8eNRH6wpew@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <3b978c0e-5f3c-4501-20ea-c9d5b8d19885@3mdeb.com>
Date: Wed, 22 Aug 2018 15:39:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAE5v_r+EZ97Lhjwwo4i7dwy1M7VRm+Lq6pZUsgyi8eNRH6wpew@mail.gmail.com>
X-Ovh-Tracer-Id: 7458242458724282025
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtjedrfedugdeijecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: Re: require/include recipe.bb
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
X-List-Received-Date: Wed, 22 Aug 2018 14:57:26 -0000
Content-Type: multipart/alternative;
	boundary="------------9BC8045798EF16DF4AD67DAC"
Content-Language: en-US

--------------9BC8045798EF16DF4AD67DAC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

How about moving the common part which is supposed to get included into 
the `.inc` file?
To be fair, I have not seen any case of `include` or `require` statement 
with a recipe (.bb) file
rather than with the (`.inc`) file. Did you?


On 22.08.2018 15:34, Tomasz Michalski wrote:
> Hi
> I have recipes:
> recipe_1.0.0.bb <http://recipe_1.0.0.bb>
> recipe_1.0.1.bb <http://recipe_1.0.1.bb>
> ...
> recipe_3.4.0.bb <http://recipe_3.4.0.bb>
> If in some meta-layer I want to write some bbappend file to the latest 
> fresh version I create file
> recipe_%.bbappend.
>
> I have file otherRecipe.bb which is not versioned and inherit to 
> auto_package_version.
> In definition of otherRecipe I have
>
> DESCRIPTION = "some description"
> SECTION = "nameOfSection"
> LICENSE = "CLOSED"
>
> require recipe_1.0.0.bb <http://recipe_1.0.0.bb>
> (or
> include recipe_1.0.0.bb <http://recipe_1.0.0.bb>)
>
> How to change the above formula in order include the latest fresh 
> recipe instead of concrete version?
> Replacing with "include recipe_%.bb" doesn't work.
>
>
>
>

-- 
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com


--------------9BC8045798EF16DF4AD67DAC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>How about moving the common part which is supposed to get
      included into the `.inc` file?<br>
      To be fair, I have not seen any case of `include` or `require`
      statement with a recipe (.bb) file<br>
      rather than with the (`.inc`) file. Did you?<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 22.08.2018 15:34, Tomasz Michalski
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAE5v_r+EZ97Lhjwwo4i7dwy1M7VRm+Lq6pZUsgyi8eNRH6wpew@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <div dir="ltr">Hi
        <div>I have recipes:</div>
        <div><a href="http://recipe_1.0.0.bb" moz-do-not-send="true">recipe_1.0.0.bb</a></div>
        <div>
          <span
style="font-size:small;background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline"><a
              href="http://recipe_1.0.1.bb" moz-do-not-send="true">recipe_1.0.1.bb</a></span>
          <br>
        </div>
        <div>...</div>
        <div>
          <span
style="font-size:small;background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline"><a
              href="http://recipe_3.4.0.bb" moz-do-not-send="true">recipe_3.4.0.bb</a></span>
          <br>
        </div>
        <div>If in some meta-layer I want to write some bbappend file to
          the latest fresh version I create file</div>
        <div>recipe_%.bbappend.</div>
        <div><br>
        </div>
        <div>I have file otherRecipe.bb which is not versioned and
          inherit to auto_package_version.</div>
        <div>In definition of otherRecipe I have</div>
        <div><br>
        </div>
        <div>
          <div>DESCRIPTION = "some description"</div>
          <div>SECTION = "nameOfSection"</div>
          <div>LICENSE = "CLOSED"</div>
        </div>
        <div><br>
        </div>
        <div>require <a href="http://recipe_1.0.0.bb"
            moz-do-not-send="true">recipe_1.0.0.bb</a></div>
        <div>(or</div>
        <div>include <a href="http://recipe_1.0.0.bb"
            moz-do-not-send="true">recipe_1.0.0.bb</a>)</div>
        <div><br>
        </div>
        <div>How to change the above formula in order include the latest
          fresh recipe instead of concrete version?</div>
        <div>Replacing with "include recipe_%.bb" doesn't work.</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
<a class="moz-txt-link-freetext" href="http://3mdeb.com">http://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------9BC8045798EF16DF4AD67DAC--
