Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46C87E00AF2; Mon, 24 Apr 2017 23:53:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Apr 2017 23:53:12 PDT
Received: from cloudserver096301.home.net.pl (cloudserver096301.home.net.pl
	[79.96.179.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCAD4E00AE6
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 23:53:11 -0700 (PDT)
Received: from 81-95-197-197.metrolink.pl (81.95.197.197) (HELO
	[192.168.0.103])
	by serwer1539010.home.pl (79.96.179.35) with SMTP (IdeaSmtpServer 0.82)
	id c2e993f8e67f3236; Tue, 25 Apr 2017 08:46:32 +0200
To: yocto@yoctoproject.org
References: <CAJ5fcV09oAowofNxyneK6QuetLDt3a9MxSuvRT7R-WUMhrLp_g@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <c0e4ac13-d7d1-cf51-fbb3-eaaf750ced2a@3mdeb.com>
Date: Tue, 25 Apr 2017 08:46:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ5fcV09oAowofNxyneK6QuetLDt3a9MxSuvRT7R-WUMhrLp_g@mail.gmail.com>
Subject: Re: Add own dts file to arch/arm/boot/dts
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
X-List-Received-Date: Tue, 25 Apr 2017 06:53:16 -0000
Content-Type: multipart/alternative;
	boundary="------------BF23F1EEEA95EEBBE555BF21"

--------------BF23F1EEEA95EEBBE555BF21
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 04/25/2017 07:53 AM, Malte Thiel wrote:
> Good day,
Hello,
>
> How can I add my own dts file to the arch/arm/boot/dts folder? Within 
> my yocto installation the whole path for the dts files is:
>
> tmp/work/sm2_imx6-poky-linux-gnueabi/linux-yocto-custom/4.1.15-2/git/arch/arm/boot/dts
>
> As you can see it lies within the "tmp" folder. Hence, I do not want 
> to copy it manually into this branch. I tried playing around with 
> "appendsrcfiles" while creating an extra recipe "add-screen-dts":
>
>
> recipetool appendsrcfiles --destdir arch/arm/boot/dts 
> ../../sources/meta-own add-screen-dts 
> ../../sources/meta-own/recipes-own/images/sm2-imx6-133-1280x800-single-lvds-SCX1001255GGU17.dts
>
> However, I do not have any success here. Thanks for helping me out!
I believe you should enter to linux source directory posted above and 
place your dts there.
Then you should prepare patch (using git format-patch for example). This 
patch should be
placed in your meta layer into linux/linux-yocto-custom directory. At 
last, add this patch to
SRC_URI variable in form of: file://patch-name.patch into your 
linux-yocto-custom.bb recipe.
At least that's the way I would do it. Let me know if it is not clear 
enough.

>
>
>

-- 
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com


--------------BF23F1EEEA95EEBBE555BF21
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 04/25/2017 07:53 AM, Malte Thiel
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJ5fcV09oAowofNxyneK6QuetLDt3a9MxSuvRT7R-WUMhrLp_g@mail.gmail.com"
      type="cite">
      <div dir="ltr">Good day,</div>
    </blockquote>
    Hello,<br>
    <blockquote
cite="mid:CAJ5fcV09oAowofNxyneK6QuetLDt3a9MxSuvRT7R-WUMhrLp_g@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>How can I add my own dts file to the arch/arm/boot/dts
          folder? Within my yocto installation the whole path for the
          dts files is:</div>
        <div><br>
        </div>
        <div>tmp/work/sm2_imx6-poky-linux-gnueabi/linux-yocto-custom/4.1.15-2/git/arch/arm/boot/dts<br>
        </div>
        <div><br>
        </div>
        <div>As you can see it lies within the "tmp" folder. Hence, I do
          not want to copy it manually into this branch. I tried playing
          around with "appendsrcfiles" while creating an extra recipe
          "add-screen-dts":</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>recipetool appendsrcfiles --destdir arch/arm/boot/dts  
          ../../sources/meta-own add-screen-dts
../../sources/meta-own/recipes-own/images/sm2-imx6-133-1280x800-single-lvds-SCX1001255GGU17.dts<br>
        </div>
        <div><br>
        </div>
        <div>However, I do not have any success here. Thanks for helping
          me out!</div>
      </div>
    </blockquote>
    I believe you should enter to linux source directory posted above
    and place your dts there.<br>
    Then you should prepare patch (using git format-patch for example).
    This patch should be<br>
    placed in your meta layer into linux/linux-yocto-custom directory.
    At last, add this patch to<br>
    SRC_URI variable in form of: <a class="moz-txt-link-freetext" href="file://patch-name.patch">file://patch-name.patch</a> into your
    linux-yocto-custom.bb recipe.<br>
    At least that's the way I would do it. Let me know if it is not
    clear enough.<br>
    <br>
    <blockquote
cite="mid:CAJ5fcV09oAowofNxyneK6QuetLDt3a9MxSuvRT7R-WUMhrLp_g@mail.gmail.com"
      type="cite">
      <div dir="ltr">
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

--------------BF23F1EEEA95EEBBE555BF21--
