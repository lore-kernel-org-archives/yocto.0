Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8AAEE00C54; Mon, 17 Oct 2016 12:28:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB162E00A21
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 12:28:50 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id ry6so64825024pac.3
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 12:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=lwAmCTvUkP7INAzusaicffEHjaYmaCDS3mBVzTFl0Q4=;
	b=qeQtTxVGkwTUHxOt1ni5ZgEeL+Hgq++gv59n4rJembnIHrMGm2IsJYOrqFHUcXLkJd
	xpUfy8odOZMh5s+gGKhVRQS3XSGIntILEse+9XieYOsyHtceurIjv5/aUcQqI+ZPQ+/C
	pdesPoGzt2jpt5z1r0q0w8hZ7q3/Ie67hlcWTvcCcVrkdUN4247aB4weEEryCZi0yWc9
	ltKChOU3NQB26aaLnLZ69YiwqZvg5d/HvjAIS/ItO8Pmjwwf3M9j0FvZnrs6N4+C5CNc
	fvSHQQzfMYsK5oH1IGporUGqgS7ucYoITbvBK7QuMrSkrkpNn4sheZFaE/OAQxztX021
	4V1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=lwAmCTvUkP7INAzusaicffEHjaYmaCDS3mBVzTFl0Q4=;
	b=NDfQGVLJe5aDlX5G+kr1Vzq65Q9dYyhdFUm+t29PC0Msb6vhEjJ7z1JdzoYhlcSjot
	VkFF5obXOFATAKBUDt7fv35/uhdSQO6ZBOelIo8rBSMbasy3mkWpWIfgSXhPnvS2+ys/
	el17WNevtwq+fwvi6ScCXnI4/EZRLlVbvnPd+gF44nlM5P63sMjyq02T7x8gl689gRA6
	RyAS0I33c9ozQ3Hay6/4PkB9LjnLDQocHzlMQy84mY8fcS54d6ppiuoJxwxP5dBjkHOw
	NDT0CsyXgGAEJKwV0TfQVFc/dWV47nyl8OLLiSppWUuJHllXee+J40ltKr9qMvkFa+BY
	sWyA==
X-Gm-Message-State: AA6/9RltWkRraMOkuBaQ4Cq6Zv67EWBpma09uVkal9v5D87AT1h6o3FITwMrcsVamWdAQGF4
X-Received: by 10.66.160.132 with SMTP id xk4mr15004048pab.78.1476732529904;
	Mon, 17 Oct 2016 12:28:49 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:5ef:e28f:5dce:e040?
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	t128sm36787446pfd.65.2016.10.17.12.28.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Oct 2016 12:28:49 -0700 (PDT)
To: Sona Sarmadi <sona.sarmadi@enea.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
From: akuster <akuster@mvista.com>
Message-ID: <28411947-f775-bfcc-7c4b-0c8eade8bd09@mvista.com>
Date: Mon, 17 Oct 2016 12:28:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
Subject: Re: General policies for CVE fixes
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
X-List-Received-Date: Mon, 17 Oct 2016 19:28:59 -0000
Content-Type: multipart/alternative;
	boundary="------------45A09524CF7DA35D3FBC45A7"

--------------45A09524CF7DA35D3FBC45A7
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/17/2016 12:11 PM, Sona Sarmadi wrote:
>
> Hi all,
>
> From https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance:
>
> /General policies: /
>
>   * /Fixes must go into master first unless they are applicable only
>     to the stable branch; if back-porting to an older stable branch,
>     the fix should first be applied to the newer stable branches
>     before being back-ported to the older branch/
>
> Does anyone know the reason for the policy above i.e. why fixes have 
> to go to master first?
>
/
This is standard open source policy. The latest version of something 
gets the fix first (if applicable) than is propagated to older versions.

/
>
> 1)It makes more sense at least for users  to get CVE fixes as soon as 
> possible in the maintenance branches.
>
This leads to Master or other newer branches not being fixed.

> 2)Normally the versions are different in master and maintenance 
> branches so different patches are required.
>
Correct.

- Armin
>
> Thanks
>
> //Sona
>
>
>


--------------45A09524CF7DA35D3FBC45A7
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
    <div class="moz-cite-prefix">On 10/17/2016 12:11 PM, Sona Sarmadi
      wrote:<br>
    </div>
    <blockquote
      cite="mid:3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:276253267;
	mso-list-template-ids:333113310;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1826312056;
	mso-list-type:hybrid;
	mso-list-template-ids:-1862247648 69009425 69009433 69009435 69009423 69009433 69009435 69009423 69009433 69009435;}
@list l1:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US">Hi
            all,<o:p></o:p></span></p>
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US">From
            <a moz-do-not-send="true"
              href="https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance">https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance</a>:
            <o:p></o:p></span></p>
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><i><span
              style="font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US">General
              policies:
              <o:p></o:p></span></i></p>
        <ul type="disc">
          <li class="MsoNormal"
            style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0
            level1 lfo1">
            <i><span style="font-size:12.0pt;font-family:&quot;Times New
                Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US">Fixes
                must go into master first unless they are applicable
                only to the stable branch; if back-porting to an older
                stable branch, the fix should first be applied to the
                newer stable branches before being back-ported to the
                older branch</span></i></li>
        </ul>
      </div>
    </blockquote>
    <blockquote
      cite="mid:3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US">Does
            anyone know the reason for the policy above i.e. why fixes
            have to go to master first? </span></p>
      </div>
    </blockquote>
    <i><br>
      This is standard open source policy. The latest version of
      something gets the fix first (if applicable) than is propagated to
      older versions. <br>
      <br>
    </i>
    <blockquote
      cite="mid:3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"
          style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoListParagraph"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0pt;mso-list:l1
          level1 lfo2">
          <!--[if !supportLists]--><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US"><span
              style="mso-list:Ignore">1)<span style="font:7.0pt
                &quot;Times New Roman&quot;">     
              </span></span></span><!--[endif]--><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US">It
            makes more sense at least for users  to get CVE fixes as
            soon as possible in the maintenance branches.
          </span></p>
      </div>
    </blockquote>
    This leads to Master or other newer branches not being fixed. <br>
    <br>
    <blockquote
      cite="mid:3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se"
      type="cite">
      <div class="WordSection1">
        <p class="MsoListParagraph"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0pt;mso-list:l1
          level1 lfo2"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoListParagraph"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0pt;mso-list:l1
          level1 lfo2">
          <!--[if !supportLists]--><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US"><span
              style="mso-list:Ignore">2)<span style="font:7.0pt
                &quot;Times New Roman&quot;">     
              </span></span></span><!--[endif]--><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US">Normally
            the versions are different in master and maintenance
            branches so different patches are required.
          </span></p>
      </div>
    </blockquote>
    Correct. <br>
    <br>
    - Armin<br>
    <blockquote
      cite="mid:3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se"
      type="cite">
      <div class="WordSection1">
        <p class="MsoListParagraph"
style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0pt;mso-list:l1
          level1 lfo2"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:SV" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Thanks<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">//Sona<o:p></o:p></span></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------45A09524CF7DA35D3FBC45A7--
