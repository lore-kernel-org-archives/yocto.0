Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4369.1587569133144659286
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 08:25:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FV/0pvRz;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: easmith5555@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B93EFE01A4C; Wed, 22 Apr 2020 08:25:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03F39E01A4A
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 08:25:31 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id 19so2760615ioz.10
        for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 08:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=OLofupQwdqwOnU2en5QsT2axN6FZHMXTJipwUEqeTus=;
        b=FV/0pvRzlQqE23b4HZjKTAUjvf8oCEwoLSBvVCA6vjb5CeAQE+JQfGvFbrkOGo/3r0
         5GenQ7HjvokU+sBIAj3XZas8QZdiPkRS9pggVbm1RgP//bzHMkUHgBgmmHBMdYeT/Xyj
         FbL71dQuxyNWGgYapkb07slw4VAyqbmCdt0RZWuf2DDH9l+r/XK8WU3KL0rdjYAwAx1h
         RjQHB+fK2ELENGAi3eWgB1IKxqWJvfifbYQ9RitYfIOjsGlkKHrjjNIfTOOe6nooKN/T
         OxiVsdAc7Ti2Zt3mjkrOJZ3oESFtLarbokNO349UzP30O77cnQ1Mr6aykX8hm3nGfoUt
         JEjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OLofupQwdqwOnU2en5QsT2axN6FZHMXTJipwUEqeTus=;
        b=EKNDiRSHTm1+ZCSl7jw2q606uzggo2JEQKEG0Q5qDIudOtPGnG5Pmq9aUD1fWhteO5
         oBg/u7RQJZ5f/aO7FepqevraQi41U2XQNfHPvm91ihcEOtfy2uzt3MPDzYYMyxxXHK9N
         +BTGmI6M7BqVGbfith+k8sGp5PSSgv5PswnTxx/19abRpZAD0L6yQv4N1YlYIyArmil3
         WOM9eOxIMqlt799VY6Z8T8JP1ngmoqQHQkwnmYbHYcz+/qEyhtbZCpb0lc9UI2/vkKIk
         MkXVX4sCsdx1nUgLmkcL2E3SjpH1QijD8HyI6ERzh8uc3VA9NWYVvm+SCUJ6Ofo/KWZU
         SrhA==
X-Gm-Message-State: AGi0PuaNZO5uTG7UAOJ7xdhSVzm+zWbsQGmm1yvyztkwmfx2PhILp4k2
	sHbg9IPDViTnr/TBXtgwJMR17dsyVJIWvdls/HObTA==
X-Google-Smtp-Source: APiQypI76PD6X/LTUoesngv7JyEThUiBnPl4lBOJR6sqnkoAKHmPqi265G3T8IUUSVJ/A/yA6wsbIcj3b0ddMjQ6VVE=
X-Received: by 2002:a5e:9315:: with SMTP id k21mr25444753iom.43.1587569130068;
 Wed, 22 Apr 2020 08:25:30 -0700 (PDT)
MIME-Version: 1.0
From: "Emily" <easmith5555@gmail.com>
Date: Wed, 22 Apr 2020 10:25:18 -0500
Message-ID: <CAAV2bM2k4+ZPaqgSK5WjEkYZ+fFwDx1uZ4ucOkoh3ParLvFSxQ@mail.gmail.com>
Subject: Adding python3 remotely
To: Yocto List <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000de1c505a3e2be97"

--0000000000000de1c505a3e2be97
Content-Type: text/plain; charset="UTF-8"

Hi all -

I'd like to add python3 to my OS - I can add and build it just fine, but at
the moment I can't physically access my board. I've never been able to get
the OS to update properly remotely, though I think there should be a way
since I'm booting from SD. That aside, can I just copy the built python3
files to the proper places in my OS (/usr/lib, /usr/bin, etc) and have a
working python3 on the board? If so, which files do I need? I've been
unable to get it to work thus far by just poking around the workdir files.

Thanks,
Emily Smith

--0000000000000de1c505a3e2be97
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all -=C2=A0<div><br></div><div>I&#39;d like to add pyth=
on3 to my OS - I can add and build it just fine, but at the moment I can&#3=
9;t physically access my board. I&#39;ve never been able to get the OS to u=
pdate properly remotely, though I think there should be a way since I&#39;m=
 booting from SD. That aside, can I just copy the built python3 files to th=
e proper places in my OS (/usr/lib, /usr/bin, etc) and have a working pytho=
n3 on the board? If so, which files do I need? I&#39;ve been unable to get =
it to work thus far by just poking around the workdir files.=C2=A0</div><di=
v><br></div><div>Thanks,</div><div>Emily Smith</div></div>

--0000000000000de1c505a3e2be97--
