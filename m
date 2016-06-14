Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CD23E00B5F; Tue, 14 Jun 2016 08:32:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64B08E00B5F
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 08:32:55 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id n184so127229204wmn.1
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 08:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=8q2GJrys6DOMPdaYIp0JatbBOXrwTpEUDihiIBC2Sq8=;
	b=Srz5MRmcL1aRX4sWyFezSxARJRx8rG3mb8h5NN5jdH5yY1d2rXdRj0qeFwA8G/mMWq
	ms4T6CvdgAHZxj6t3QDci2Frtk+F/i/MREHi4htpiD9NFrZXIcqAVy2nqbSBgPdiv5AI
	A5Bk0nPXOa8SqgicPujBnQBykNgtFRghafHIGYokebj5TYbYwd4I9ylJpHSN6rIXVQ6h
	pMhYPwzvGxRIf10JQKGJdpjx/ZGsifkYkDAs2WUhxfuaScr+aPPwif2X8wHyeUMt6XbB
	bznB4QAN/D4hwJi2l/s4ZgKmaRwQFPfYRWvudsi7QbSfASEGkhUDLotrCnjEmEjHQ3of
	f6tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=8q2GJrys6DOMPdaYIp0JatbBOXrwTpEUDihiIBC2Sq8=;
	b=FaBpfHcz4+lbTcdI2GXPUV54f46esi0Ri/Ljd1y2hmPa3hT1Mgt7lEduPTl/wk0y6w
	lI820dqGzoypgx/KVnAOdCTJJ+2VOHlCH/jdkd6rHMvI4itDP9N9ZkBnNUC759lPCdrT
	fNWpwpkZoGUoUk0fCmNR1x0/UhqBjPlwb3AhYlhWLLIpOWydm+zzgA1nHUOo8/ZdG9nm
	pGK7r8+gQ6unduoCF/E48Rpy2uGrxS+Bh7dm0w8CE9gKQ9fb95ihZgZIXint4cTBYIpv
	U0xhxKXm+lfpX7MDaXgzEyeLVr9tK5ovzl5w7Do1bgBc/aUqOlcVyr+P01kpDYonY9Yx
	g8+w==
X-Gm-Message-State: ALyK8tI+XGx28JXj9AHeForMTgiDdLDjgUUDvxuElkfzlAOI+Ye4cp3lZNFoDQNzxr3XqA==
X-Received: by 10.28.88.206 with SMTP id m197mr6735135wmb.43.1465918374348;
	Tue, 14 Jun 2016 08:32:54 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id 75sm4715840wml.15.2016.06.14.08.32.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 14 Jun 2016 08:32:53 -0700 (PDT)
To: "Dey, Megha" <megha.dey@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <C440BA31B54DCD4AAC682D2365C8FEE703C9DE63@ORSMSX113.amr.corp.intel.com>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <576023A5.90006@elfin.de>
Date: Tue, 14 Jun 2016 17:32:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <C440BA31B54DCD4AAC682D2365C8FEE703C9DE63@ORSMSX113.amr.corp.intel.com>
Subject: Re: Script being installed under /etc/init.d instead of /usr/lib/systemd folder
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
X-List-Received-Date: Tue, 14 Jun 2016 15:32:59 -0000
Content-Type: multipart/alternative;
	boundary="------------000705080503060506010305"

--------------000705080503060506010305
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Take a look at example from my some-recipe.bb
:

inherit systemd

SYSTEMD_SERVICE_${PN} = "some-recipe.service"

do_install_append () {
     install -d ${D}${systemd_unitdir}/system
     install -m 0644 ${S}/configs/some-recipe.service 
${D}${systemd_unitdir}/system
}

First in your recipe inherit from "systemd".
Then install your systemd service file in 
"${D}${systemd_unitdir}/system" (there is also a variable for this 
directory, I think it's ${systemd_system_unitdir} or something similar).
Remember to create a directory before placing a file there.

In the last step use "SYSTEMD_SERVICE_${PN}" where you specify systemd 
services that should be run.

I hope that helps..

Best regards,
Piotr Lewicki


On 09.06.2016 03:11, Dey, Megha wrote:
>
> Hi,
>
> I am trying to use the systemd init system from the existing system. I 
> have added the following to my conf file:
>
> DISTRO_FEATURES_append = " systemd"
>
> VIRTUAL-RUNTIME_init_manager = "systemd"
>
> VIRTUAL-RUNTIME_initscripts = ""
>
> DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
>
> I have also added the ‘systemd’ binary to the INSTALL_APPEND.
>
> When I boot the resulting image, I do see systemd up and running and I 
> am able to start and stop services.
>
> However, I do have a script recipe which is currently placed as a 
> bbappend to initscripts 
> (meta/recipes-core/initscripts/initscript_..bb) in my custom meta layer.
>
> This script even after shifting to systemd, is being placed in the 
> /etc/init.d/ folder, and hence doesn’t run on boot. I want this to be 
> placed in the /usr/lib/system.d/ folder instead. How would I be able 
> to do this?
>
> Is it because this script is an append to initscripts, it by default 
> gets installed under /etc/init.d? If so, where should I place the recipe?
>
> Thanks,
>
> Megha
>
>
>


--------------000705080503060506010305
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Take a look at example from my some-recipe.bb<br>
    :<br>
    <br>
    inherit systemd<br>
    <br>
    SYSTEMD_SERVICE_${PN} = "some-recipe.service"<br>
    <br>
    do_install_append () {<br>
        install -d ${D}${systemd_unitdir}/system<br>
        install -m 0644 ${S}/configs/some-recipe.service
    ${D}${systemd_unitdir}/system<br>
    }<br>
    <br>
    First in your recipe inherit from "systemd".<br>
    Then install your systemd service file in
    "${D}${systemd_unitdir}/system" (there is also a variable for this
    directory, I think it's ${systemd_system_unitdir} or something
    similar).<br>
    Remember to create a directory before placing a file there.<br>
    <br>
    In the last step use "SYSTEMD_SERVICE_${PN}" where you specify
    systemd services that should be run.<br>
    <br>
    I hope that helps..<br>
    <br>
    Best regards,<br>
    Piotr Lewicki<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 09.06.2016 03:11, Dey, Megha wrote:<br>
    </div>
    <blockquote
cite="mid:C440BA31B54DCD4AAC682D2365C8FEE703C9DE63@ORSMSX113.amr.corp.intel.com"
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
        <p class="MsoNormal">Hi,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I am trying to use the systemd init system
          from the existing system. I have added the following to my
          conf file:<o:p></o:p></p>
        <p class="MsoNormal">DISTRO_FEATURES_append = " systemd"<o:p></o:p></p>
        <p class="MsoNormal">VIRTUAL-RUNTIME_init_manager = "systemd"<o:p></o:p></p>
        <p class="MsoNormal">VIRTUAL-RUNTIME_initscripts = ""<o:p></o:p></p>
        <p class="MsoNormal">DISTRO_FEATURES_BACKFILL_CONSIDERED +=
          "sysvinit"<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I have also added the ‘systemd’ binary to
          the INSTALL_APPEND.<o:p></o:p></p>
        <p class="MsoNormal">When I boot the resulting image, I do see
          systemd up and running and I am able to start and stop
          services.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">However, I do have a script recipe which is
          currently placed as a bbappend to initscripts
          (meta/recipes-core/initscripts/initscript_..bb) in my custom
          meta layer.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">This script even after shifting to systemd,
          is being placed in the /etc/init.d/ folder, and hence doesn’t
          run on boot. I want this to be placed in the
          /usr/lib/system.d/ folder instead. How would I be able to do
          this?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Is it because this script is an append to
          initscripts, it by default gets installed under /etc/init.d?
          If so, where should I place the recipe?
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks,<o:p></o:p></p>
        <p class="MsoNormal">Megha<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------000705080503060506010305--
