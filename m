Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8201BE00BC2; Thu, 18 Oct 2018 19:22:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E832E00994
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 19:22:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w9J2M99Z012204
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Oct 2018 19:22:09 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Thu, 18 Oct 2018 19:22:08 -0700
To: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DM5PR15MB1913BD8745ECEE34DF9A86E0F0F80@DM5PR15MB1913.namprd15.prod.outlook.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <9adf959e-b09f-dc4e-acbf-e6859e3572fd@windriver.com>
Date: Fri, 19 Oct 2018 10:28:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <DM5PR15MB1913BD8745ECEE34DF9A86E0F0F80@DM5PR15MB1913.namprd15.prod.outlook.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: conflicting requests error while building SDK
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
X-List-Received-Date: Fri, 19 Oct 2018 02:22:12 -0000
Content-Type: multipart/alternative;
	boundary="------------8844102C5093404062AE3DF4"

--------------8844102C5093404062AE3DF4
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

This is the current RDEPENDS setting in kernel-devsrc.bb recipe:

RDEPENDS_${PN} = "bc python flex bison ${TCLIBC}-utils"
# 4.15+ needs these next two RDEPENDS
RDEPENDS_${PN} += "openssl-dev util-linux"
# and x86 needs a bit more for 4.15+
RDEPENDS_${PN} += "${@bb.utils.contains('ARCH', 'x86', 'elfutils', '', d)}"

I think you need to update the RDEPENDS to "bc python flex bison 
${TCLIBC}-utils" for the sumo branch?
Could you please try it out and do some testing followed by a patch if 
all work out well?

Best Regards,
Chen Qi

On 10/18/2018 11:50 PM, Mohammad, Jamal M wrote:
>
> Hi Guys,
>
> I got the following conflicting requests error while building SDK
>
> I am using sumo branch , and generic core-intel-i7-64 machine 
> configuration.
>
> Running the following command: bitbake -c populate_sdk core-image-minimal
>
> Fails at the last step with the following error.
>
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Could not invoke 
> dnf. Command 
> '/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf 
> -y -c 
> /home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-poky-linux/etc/dnf/dnf.conf 
> --setopt=reposdir=/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-poky-linux/etc/yum.repos.d 
> --repofrompath=oe-repo,/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo 
> --installroot=/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-poky-linux 
> --setopt=logdir=/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/temp 
> --nogpgcheck install lib32-dpkg lib32-libstdc++6 
> lib32-packagegroup-core-standalone-sdk-target lib32-libx11-6 
> lib32-ncurses lib32-libgcc1 lib32-libgnutls30 lib32-libfreetype6 
> lib32-libc6 run-postinsts libgnutls30 dpkg kernel-devsrc 
> packagegroup-core-standalone-sdk-target packagegroup-core-boot 
> target-sdk-provides-dummy' returned 1:
>
> Added oe-repo repo from 
> /home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo
>
> Last metadata expiration check: 0:00:02 ago on Thu 18 Oct 2018 
> 01:12:30 PM UTC.
>
> Error:
>
>  Problem: conflicting requests
>
>   - nothing provides /usr/bin/python needed by 
> kernel-devsrc-1.0-r0.intel_corei7_64
>
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Function failed: 
> do_populate_sdk
>
> ERROR: Logfile of failure stored in: 
> /home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/temp/log.do_populate_sdk.11307
>
> ERROR: Task 
> (/home/jamal/repotest1/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_populate_sdk) 
> failed with exit code '1'
>
> I found similar error in yocto mailing list, but unable to 
> understand.. Can you please help me to resolve this issue.. Thanks for 
> your time
>
> https://lists.yoctoproject.org/pipermail/yocto/2018-February/039941.html
>
> I have /usr/bin/python in my system
>
> Thanks and Regards,
>
> Jamal,
>
> NCR Corporation
>
>
>


--------------8844102C5093404062AE3DF4
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">This is the current RDEPENDS setting in
      kernel-devsrc.bb recipe:<br>
      <br>
      RDEPENDS_${PN} = "bc python flex bison ${TCLIBC}-utils"<br>
      # 4.15+ needs these next two RDEPENDS<br>
      RDEPENDS_${PN} += "openssl-dev util-linux"<br>
      # and x86 needs a bit more for 4.15+<br>
      RDEPENDS_${PN} += <a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('ARCH','x86','elfutils','',d)}">"${@bb.utils.contains('ARCH', 'x86', 'elfutils',
      '', d)}"</a><br>
      <br>
      I think you need to update the RDEPENDS to "bc python flex bison
      ${TCLIBC}-utils" for the sumo branch?<br>
      Could you please try it out and do some testing followed by a
      patch if all work out well?<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 10/18/2018 11:50 PM, Mohammad, Jamal M wrote:<br>
    </div>
    <blockquote
cite="mid:DM5PR15MB1913BD8745ECEE34DF9A86E0F0F80@DM5PR15MB1913.namprd15.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hi Guys,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I got the following conflicting requests
          error while building SDK<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I am using sumo branch , and generic
          core-intel-i7-64 machine configuration.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Running the following command: bitbake -c
          populate_sdk core-image-minimal<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Fails at the last step with the following
          error.<o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black">ERROR:
            core-image-minimal-1.0-r0 do_populate_sdk: Could not invoke
            dnf. Command
'/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf
            -y -c
/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-poky-linux/etc/dnf/dnf.conf
--setopt=reposdir=/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-poky-linux/etc/yum.repos.d
--repofrompath=oe-repo,/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo
--installroot=/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-poky-linux
--setopt=logdir=/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/temp
            --nogpgcheck install lib32-dpkg lib32-libstdc++6
            lib32-packagegroup-core-standalone-sdk-target lib32-libx11-6
            lib32-ncurses lib32-libgcc1 lib32-libgnutls30
            lib32-libfreetype6 lib32-libc6 run-postinsts libgnutls30
            dpkg kernel-devsrc packagegroup-core-standalone-sdk-target
            packagegroup-core-boot target-sdk-provides-dummy' returned
            1:</span><o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black">Added oe-repo repo from
/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo</span><o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black">Last metadata expiration
            check: 0:00:02 ago on Thu 18 Oct 2018 01:12:30 PM UTC.</span><o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black">Error:
          </span><o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black"> Problem: conflicting
            requests</span><o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black">  - nothing provides
            /usr/bin/python needed by
            kernel-devsrc-1.0-r0.intel_corei7_64</span><o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black"> </span><o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black">ERROR:
            core-image-minimal-1.0-r0 do_populate_sdk: Function failed:
            do_populate_sdk</span><o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black">ERROR: Logfile of failure
            stored in:
/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/temp/log.do_populate_sdk.11307</span><o:p></o:p></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0in;margin-bottom:2.0pt;margin-left:0in;text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Segoe
            UI&quot;,sans-serif;color:black">ERROR: Task
(/home/jamal/repotest1/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_populate_sdk)
            failed with exit code '1'
          </span><o:p></o:p></p>
        <p class="MsoNormal" style="text-autospace:none"><span
            style="font-size:9.5pt"> </span><o:p></o:p></p>
        <p class="MsoNormal">I found similar error in yocto mailing
          list, but unable to understand.. Can you please help me to
          resolve this issue.. Thanks for your time<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p
style="margin:0in;margin-bottom:.0001pt;background:white;vertical-align:baseline"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"><a
              moz-do-not-send="true"
href="https://lists.yoctoproject.org/pipermail/yocto/2018-February/039941.html"><span
                style="color:windowtext;text-decoration:none">https://lists.yoctoproject.org/pipermail/yocto/2018-February/039941.html</span></a><o:p></o:p></span></p>
        <p
style="margin:0in;margin-bottom:.0001pt;background:white;vertical-align:baseline"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"><o:p> </o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;margin-left:0in;background:white;vertical-align:baseline;font-variant-ligatures:
          normal;font-variant-caps: normal;font-variant-numeric:
          inherit;font-variant-east-asian: inherit;font-stretch:
          inherit;line-height:inherit;box-sizing: inherit;orphans:
          2;widows: 2;-webkit-text-stroke-width:
          0px;text-decoration-style: initial;text-decoration-color:
          initial;word-spacing:0px">
          <span
            style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">I
            have /usr/bin/python in my system<o:p></o:p></span></p>
        <p class="MsoNormal">Thanks and Regards,<o:p></o:p></p>
        <p class="MsoNormal">Jamal,<o:p></o:p></p>
        <p class="MsoNormal">NCR Corporation<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------8844102C5093404062AE3DF4--
