Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
 by mx.groups.io with SMTP id smtpd.web11.13610.1586451605280177979
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 10:00:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XHzcPUzl;
 spf=pass (domain: gmail.com, ip: 209.85.166.51, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f51.google.com with SMTP id y17so249319iow.9
        for <yocto@lists.yoctoproject.org>; Thu, 09 Apr 2020 10:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=d//g2ypWXdbKI4nSmknkHqGElkj+Firj47VRj6bAM2k=;
        b=XHzcPUzlu8Bvr8TjWlfglM6Ru8aFAt1zmVok+RzjdOhx9IVWwaQEYGmdltkYzf6lZY
         vU35ISA4v3Io93TLS1SKlB3Yht+glwAcA0SMFcBWBxLzNbqZZJ7pe2QjtMv3v8xXwY8+
         NtWN9o3z5ETSY0zfobSOJG2+FQ8/QXug/zcjcszXiYIHUsn3WFbIGQyvJEVviwZfhYPd
         D6gw+6O5EjXpz3IRpt1KOUz694Owmk4KNEZ+iSnIlkce5rNvAHwS4+oJ20KzQ0iuz0AI
         XfkqsKoWMK99cVTLBsR6iKJk1gd1FYecPDsSlJNs//rObW7xPyPwpau4/OR3mDYTRcz+
         SD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=d//g2ypWXdbKI4nSmknkHqGElkj+Firj47VRj6bAM2k=;
        b=ppEPdOCgpCnc+0DZc5e8h+15XpKTEc1/Yzqifu9w7xZRWS6f9CifPTQmzkvHzlz5jX
         y4iawKa7tijf9KylsFGdnFAvdLJznjZ/9R/jPug+sxbActV9ljnMdqR8fN/PyxrxHFHt
         vqfmqFhST9X8Q5CGptZV5EYWyQ4UXEDt1591jgp4fPEszTT3fjvow7EHHH1NWz0jvVNa
         eNHwihcCqwIQlk6KCYc+WEsp6ast/OCF5ruH9ZV+yQAxI7iNI7sDYZ3rUSs88r8rMEM7
         dWhbeP1wIM5QXiX/tQK/hk+TFil+9TivLv/iDzPue+Y4frX5hF06HezJKprXO1BfhuOo
         cy1Q==
X-Gm-Message-State: AGi0PuYLMt45RoQT75CNLzYjEr/QCecNiHSvePe3htu96/u06nadZxt3
	Qq95wEYJzZjCqCrHC5LC/ydg9NCKsQc=
X-Google-Smtp-Source: APiQypLCHtzNXyoIyGuO9t26B0P8DXKve3DEysOJTqeVuA5SJ3qo1SGbs4AlhPi6OOHBDyzE+fOCxw==
X-Received: by 2002:a02:ce39:: with SMTP id v25mr393395jar.9.1586451604245;
        Thu, 09 Apr 2020 10:00:04 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:4088:1456:1d27:2ab1? ([2605:a601:ac3d:c100:4088:1456:1d27:2ab1])
        by smtp.gmail.com with ESMTPSA id h12sm9356706ilq.66.2020.04.09.10.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 10:00:03 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] sstate causing stripped kernel vs symbols mismatch
To: Sean McKay <sean.mckay@hpe.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <16039EE1565C42EA.9427@lists.yoctoproject.org>
 <TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
Message-ID: <c0573df2-dbcd-592e-ba2e-d54424e320b3@gmail.com>
Date: Thu, 9 Apr 2020 12:00:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: multipart/alternative;
 boundary="------------C7F2D16ACB4BDB1FE1F2FD63"
Content-Language: en-US

--------------C7F2D16ACB4BDB1FE1F2FD63
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit


On 4/9/20 11:42 AM, Sean McKay wrote:
>
> Anyone have any thoughts or guidance on this?
>
> It seems like a pretty major bug to me.
>
> We’re willing to put the work in to fix it, and if it’s not something 
> the upstream community is interested in, I’ll just pick a solution for 
> us and go with it.
>
> But if it’s something that we’d like me to upstream, I’d like some 
> feedback on which path I should start walking down before I start 
> taking things apart.
>

We have had a recent push for reproducible builds (and they are now 
enabled by default). Do you have any idea how much effort it would take 
to make the kernel build reproducibly? It's something we probably want 
anyway, and can add to the automated testing infrastructure to ensure it 
doesn't regress.



>
> Cheers!
>
> -Sean
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> 
> *On Behalf Of *Sean McKay
> *Sent:* Tuesday, April 7, 2020 12:03 PM
> *To:* yocto@lists.yoctoproject.org
> *Subject:* [yocto] sstate causing stripped kernel vs symbols mismatch
>
> Hi all,
>
> We’ve discovered that (quite frequently) the kernel that we deploy 
> doesn’t match the unstripped one that we’re saving for debug symbols. 
> I’ve traced the issue to a combination of an sstate miss for the 
> kernel do_deploy step combined with an sstate hit for 
> do_package_write_rpm. (side note: we know we have issues with sstate 
> reuse/stamps including things they shouldn’t which is why we hit this 
> so much. We’re working on that too)
>
> The result is that when our debug rootfs is created (where we added 
> the kernel symbols), it’s got the version of the kernel from the 
> sstate cached rpm files, but since do_deploy had an sstate miss, the 
> entire kernel gets rebuilt to satisfy that dependency chain. Since the 
> kernel doesn’t have reproducible builds working, the resulting pair of 
> kernels don’t match each other for debug purposes.
>
> So, I have two questions to start:
>
>  1. What is the recommended way to be getting debug symbols for the
>     kernel, since do_deploy doesn’t seem to have a debug counterpart
>     (which is why we originally just set things up to add the rpm to
>     the generated debug rootfs)
>  2. Does this seem like a bug that should be fixed? If so, what would
>     be the recommended solution (more thoughts below)?
>
> Even if there’s a task somewhere that does what I’m looking for, this 
> seems like a bit of a bug. I generally feel like we want to be able to 
> trust sstate, so the fact that forking dependencies that each generate 
> their own sstate objects can be out of sync is a bit scary.
>
> I’ve thought of several ways around this, but I can’t say I like any 
> of them.
>
>   * (extremely gross hack) Create a new task to use instead of
>     do_deploy that depends on do_packagegroup_write_rpm. Unpack the
>     restored (or built) RPMs and use those blobs to deploy the kernel
>     and symbols to the image directory.
>   * (gross hack with painful effects on build time) Disable sstate for
>     do_package_write_rpm and do_deploy. Possibly replace with sstate
>     logic for the kernel’s do_install step (side question – why
>     doesn’t do_install generate sstate? It seems like it should be
>     able to, since the point is to drop everything into the image
>     directory)
>   * (possibly better, but sounds hard) Change the sstate logic so that
>     if anything downstream of a do_compile task needs to be rerun,
>     /everything/ downstream of it needs to be rerun and sstate reuse
>     for that recipe is not allowed (basically all or nothing sstate).
>     Maybe with a flag that’s allowed in the bitbake file to indicate
>     that a recipe /does/ have reproducible builds and that different
>     pieces are allowed to come from sstate in that case.
>   * (fix the symptoms but not the problem) Figure out how to get
>     linux-yocto building in a reproducible fashion and pretend the
>     problem doesn’t exist.
>
> If you’re interested, this is quite easy to reproduce – these are my 
> repro steps
>
>   * Check out a clean copy of zeus (22.0.2)
>   * Add kernel-image to core-image-minimal in whatever fashion you
>     choose (I just dumped it in the RDEPENDS for
>     packagegroup-core-boot for testing)
>   * bitbake core-image-minimal
>   * bitbake -c clean core-image-minimal linux-yocto (or just wipe your
>     whole build dir, since everything should come from sstate now)
>   * Delete the sstate object(s) for linux-yocto’s deploy task.
>   * bitbake core-image-minimal
>   * Compare the BuildID hashes for the kernel in the two locations
>     using file (you’ll need to use the kernel’s extract-vmlinux script
>     to get it out of the bzImage)
>       o file
>         tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/boot/vmlinux-5.2.28-yocto-standard
>       o ./tmp/work-shared/qemux86-64/kernel-source/scripts/extract-vmlinux
>         tmp/deploy/images/qemux86-64/bzImage > vmlinux-deploy && file
>         vmlinux-deploy
>
> Anyone have thoughts or suggestions?
>
> Cheers!
>
> -Sean McKay
>
>
> 

--------------C7F2D16ACB4BDB1FE1F2FD63
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 4/9/20 11:42 AM, Sean McKay wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM">
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:375159432;
	mso-list-type:hybrid;
	mso-list-template-ids:380149702 67698705 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:386297133;
	mso-list-type:hybrid;
	mso-list-template-ids:-1357338820 -189595654 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1390415697;
	mso-list-template-ids:1987976372;}
@list l3
	{mso-list-id:1660647697;
	mso-list-template-ids:-1840223498;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4
	{mso-list-id:1981841367;
	mso-list-type:hybrid;
	mso-list-template-ids:-481146376 -1329417890 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l4:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l4:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l4:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l4:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l4:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l4:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l4:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l5
	{mso-list-id:2112816626;
	mso-list-template-ids:1723115400;}
@list l5:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l5:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Anyone have any thoughts or guidance on
          this?<o:p></o:p></p>
        <p class="MsoNormal">It seems like a pretty major bug to me.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">We’re willing to put the work in to fix it,
          and if it’s not something the upstream community is interested
          in, I’ll just pick a solution for us and go with it.<br>
          <br>
          But if it’s something that we’d like me to upstream, I’d like
          some feedback on which path I should start walking down before
          I start taking things apart.</p>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>We have had a recent push for reproducible builds (and they are
      now enabled by default). Do you have any idea how much effort it
      would take to make the kernel build reproducibly? It's something
      we probably want anyway, and can add to the automated testing
      infrastructure to ensure it doesn't regress.<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p><br>
          </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Cheers!<o:p></o:p></p>
        <p class="MsoNormal">-Sean<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b>From:</b>
              <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
              <a class="moz-txt-link-rfc2396E" href="mailto:yocto@lists.yoctoproject.org">&lt;yocto@lists.yoctoproject.org&gt;</a>
              <b>On Behalf Of </b>Sean McKay<br>
              <b>Sent:</b> Tuesday, April 7, 2020 12:03 PM<br>
              <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a><br>
              <b>Subject:</b> [yocto] sstate causing stripped kernel vs
              symbols mismatch<o:p></o:p></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Hi all, <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">We’ve discovered that (quite frequently)
          the kernel that we deploy doesn’t match the unstripped one
          that we’re saving for debug symbols. I’ve traced the issue to
          a combination of an sstate miss for the kernel do_deploy step
          combined with an sstate hit for do_package_write_rpm. (side
          note: we know we have issues with sstate reuse/stamps
          including things they shouldn’t which is why we hit this so
          much. We’re working on that too)<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The result is that when our debug rootfs is
          created (where we added the kernel symbols), it’s got the
          version of the kernel from the sstate cached rpm files, but
          since do_deploy had an sstate miss, the entire kernel gets
          rebuilt to satisfy that dependency chain. Since the kernel
          doesn’t have reproducible builds working, the resulting pair
          of kernels don’t match each other for debug purposes.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">So, I have two questions to start:<o:p></o:p></p>
        <ol style="margin-top:0in" type="1" start="1">
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l0 level1 lfo3">What is the
            recommended way to be getting debug symbols for the kernel,
            since do_deploy doesn’t seem to have a debug counterpart
            (which is why we originally just set things up to add the
            rpm to the generated debug rootfs)<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l0 level1 lfo3">Does this
            seem like a bug that should be fixed? If so, what would be
            the recommended solution (more thoughts below)?<o:p></o:p></li>
        </ol>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Even if there’s a task somewhere that does
          what I’m looking for, this seems like a bit of a bug. I
          generally feel like we want to be able to trust sstate, so the
          fact that forking dependencies that each generate their own
          sstate objects can be out of sync is a bit scary.<o:p></o:p></p>
        <p class="MsoNormal">I’ve thought of several ways around this,
          but I can’t say I like any of them.<o:p></o:p></p>
        <ul style="margin-top:0in" type="disc">
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l4 level1 lfo6">(extremely
            gross hack) Create a new task to use instead of do_deploy
            that depends on do_packagegroup_write_rpm. Unpack the
            restored (or built) RPMs and use those blobs to deploy the
            kernel and symbols to the image directory.<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l4 level1 lfo6">(gross hack
            with painful effects on build time) Disable sstate for
            do_package_write_rpm and do_deploy. Possibly replace with
            sstate logic for the kernel’s do_install step (side question
            – why doesn’t do_install generate sstate? It seems like it
            should be able to, since the point is to drop everything
            into the image directory)<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l4 level1 lfo6">(possibly
            better, but sounds hard) Change the sstate logic so that if
            anything downstream of a do_compile task needs to be rerun,
            <i>everything</i> downstream of it needs to be rerun and
            sstate reuse for that recipe is not allowed (basically all
            or nothing sstate). Maybe with a flag that’s allowed in the
            bitbake file to indicate that a recipe
            <i>does</i> have reproducible builds and that different
            pieces are allowed to come from sstate in that case.<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l4 level1 lfo6">(fix the
            symptoms but not the problem) Figure out how to get
            linux-yocto building in a reproducible fashion and pretend
            the problem doesn’t exist.<o:p></o:p></li>
        </ul>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">If you’re interested, this is quite easy to
          reproduce – these are my repro steps<o:p></o:p></p>
        <ul style="margin-top:0in" type="disc">
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l1 level1 lfo9">Check out a
            clean copy of zeus (22.0.2)<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l1 level1 lfo9">Add
            kernel-image to core-image-minimal in whatever fashion you
            choose (I just dumped it in the RDEPENDS for
            packagegroup-core-boot for testing)<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l1 level1 lfo9">bitbake
            core-image-minimal<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l1 level1 lfo9">bitbake -c
            clean core-image-minimal linux-yocto (or just wipe your
            whole build dir, since everything should come from sstate
            now)<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l1 level1 lfo9">Delete the
            sstate object(s) for linux-yocto’s deploy task.<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l1 level1 lfo9">bitbake
            core-image-minimal<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:0in;mso-list:l1 level1 lfo9">Compare the
            BuildID hashes for the kernel in the two locations using
            file (you’ll need to use the kernel’s extract-vmlinux script
            to get it out of the bzImage)<o:p></o:p></li>
          <ul style="margin-top:0in" type="circle">
            <li class="MsoListParagraph"
              style="margin-left:0in;mso-list:l1 level2 lfo9">file
tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/boot/vmlinux-5.2.28-yocto-standard<o:p></o:p></li>
            <li class="MsoListParagraph"
              style="margin-left:0in;mso-list:l1 level2 lfo9">./tmp/work-shared/qemux86-64/kernel-source/scripts/extract-vmlinux
              tmp/deploy/images/qemux86-64/bzImage &gt; vmlinux-deploy
              &amp;&amp; file vmlinux-deploy<o:p></o:p></li>
          </ul>
        </ul>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Anyone have thoughts or suggestions?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Cheers!<o:p></o:p></p>
        <p class="MsoNormal">-Sean McKay<o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------C7F2D16ACB4BDB1FE1F2FD63--
