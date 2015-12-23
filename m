Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77682E00C45; Tue, 22 Dec 2015 20:05:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53E64E00AD2
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 20:05:41 -0800 (PST)
Received: by mail-vk0-f46.google.com with SMTP id k1so751720vkb.2
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 20:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6gyo1/2uXC66g+tCJsWiRm0M8yKjrQq5/6x3GNkB6Ig=;
	b=ldelAVKFrtMOLE9FALpPH6JNTXP6lhY9KbqApqbWQCoI5YVY8YlxZ/QlFjYFSpLKPT
	ivE96YT8ICGEdBXojWteSVyUbYnGPHVckrIS3SCLzJurcf/uwzGXnjsvnsKS6saKL83I
	QeQo1l/kXAzNYEqfgT+TiMCJXHSm8NApIFRk+ry30e/KJ6zrhEs6/6VcNTzdurTYkZoM
	+CxEISwNN6bGXY5Ew7gvICIZA/Gfklfz1mrcngCdWCte94uX56jmBOrqinL6QO1gIP31
	WQTpLJcD0jp1spTGy6LSdN/ZlWjenE+cxnPPWqDy0XXFa+0IGYODGGOrrDyb0OI93D2A
	StNQ==
MIME-Version: 1.0
X-Received: by 10.31.5.15 with SMTP id 15mr17813277vkf.108.1450843540882; Tue,
	22 Dec 2015 20:05:40 -0800 (PST)
Received: by 10.31.179.130 with HTTP; Tue, 22 Dec 2015 20:05:40 -0800 (PST)
Date: Wed, 23 Dec 2015 09:35:40 +0530
Message-ID: <CALLyC8Qh2qHQus3ePFZON14jHiQ+1uHPDJ8C_yVz58ADO5VcBQ@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: which recipe produces "policygentool" command (generally from selinux-policy-dev package in debian based system)
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
X-List-Received-Date: Wed, 23 Dec 2015 04:05:45 -0000
Content-Type: multipart/alternative; boundary=001a1143df74e10a44052788d531

--001a1143df74e10a44052788d531
Content-Type: text/plain; charset=UTF-8

hi,
   I am working on selinux activities i need "policygentool" command for my
target . I have cloned "meta-selinux" layer and building the recipes , but
i don't know which recipe produces "policygentool" command ( generally that
is coming form "selinux-policy-dev" package  in debian systems). Can any
one tell me which recipe produce the policygentool command .
      Thanks in advance


Thanks and Regards
        VIVEK

--001a1143df74e10a44052788d531
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<div>=C2=A0 =C2=A0I am working on selinux activities i =
need &quot;policygentool&quot; command for my target . I have cloned &quot;=
meta-selinux&quot; layer and building the recipes , but i don&#39;t know wh=
ich recipe produces &quot;policygentool&quot; command ( generally that is c=
oming form &quot;selinux-policy-dev&quot; package =C2=A0in debian systems).=
 Can any one tell me which recipe produce the policygentool command .</div>=
<div>=C2=A0 =C2=A0 =C2=A0 Thanks in advance</div><div><br></div><div><br></=
div><div>Thanks and Regards</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 VIVEK</di=
v></div>

--001a1143df74e10a44052788d531--
