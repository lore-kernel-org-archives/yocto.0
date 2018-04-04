Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 512BCE009DB; Wed,  4 Apr 2018 07:48:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 856D7E008A2
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 07:48:48 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id q84so26656938iod.10
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2018 07:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=j7eWxqF0U5hJ+DXYhOGtG8ahKcmWRXla6Fw68VSj6QU=;
	b=LtFOQg+XInWLHYL2vHVMrFSpJKGujNTjOseS1lpb1sLuXbXAlgKvnDYS7giSqjNDCi
	NtBEwktgeflpHH3171n1D/hu4wt+ViG2fhO5bfRjCO3eUOFvsMBX49/zOdkIyEM341QT
	E/7ftNfBL+zjShWDAHkiA43lygx426/cJGqF5fG5VkAeelm7iUDzB026XQzpYR96QlsD
	N+Gri42SC/6VMp38x5VcsbedXxal34I17+n3na/K0BAgo3OXeWa1gilRMXmkncnGNb80
	wa80teqR4cF8n+S2MIVZMsoy0wpc6wF/wwirYmae6aW1c4jmW22mlWd9tOD/NPJR4qYj
	LYDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=j7eWxqF0U5hJ+DXYhOGtG8ahKcmWRXla6Fw68VSj6QU=;
	b=OKPkma4aG8b2V4t4h2jQRFiexSYB+n4cp1EJsryMxCsX9KdeyTVMS8W5DW2brXnZN+
	zLRQx5w78Mt8fb4rxP/S19oiRmFe4XuwQRQHQNlKJX58UgsOecTXfme3KZnpHYNBI2As
	eFVE+UFgnfgsmb+hn6W/PRCZiVLYMp+24zH/Ui2y5i3JEO05e1KFHI+iL6IBW+sM1Boe
	5PCTEqN3ZSqVEADaJb59biuADtx8bMr/BSzGlt+lemM153RspGRVm4bWHpObg75PRj5c
	Yca9L3thJXmpE+uv0GKJSyMscpkZfl5YKwG/BhSkVEsLAfZLANw8+KylOSQE1iXgCgjx
	Bbsw==
X-Gm-Message-State: AElRT7FBzX/YCcjnl0r0qJEtbkxjCw1YC9VrBrof1ygzvkUtoqhlBjDy
	ZyX9tI2MhxvUUaMqpc6NBa1kYsoOC/SMensM3YBu5Q==
X-Google-Smtp-Source: AIpwx4+cn/CZqnA9mhMl7xCsd3FeO6xTA+Jr3G3MgH2gtcNh/ABJ/LVZC+ZjvK1apXhrgqE1H9iIkE9r0eaGx+Fus5M=
X-Received: by 10.107.85.7 with SMTP id j7mr16537853iob.88.1522853327666; Wed,
	04 Apr 2018 07:48:47 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 04 Apr 2018 14:48:36 +0000
Message-ID: <CAFzUWGn0awUAJcBMmUMu5F4ctNUWrR_soGB2NG0zXrMiq3VesQ@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Kernel configuration patches not persisting?
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
X-List-Received-Date: Wed, 04 Apr 2018 14:48:50 -0000
Content-Type: multipart/alternative; boundary="94eb2c1c5aaaa4016a056906eb1c"

--94eb2c1c5aaaa4016a056906eb1c
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have a custom board with custom kernel config changes. Because of that, I
append the u-boot recipe as well:

https://github.com/kratsg/meta-l1calo/blob/master/recipes-bsp/u-boot/u-boot-xlnx_%25.bbappend


with my machine.h and defconfig files here:
https://github.com/kratsg/meta-l1calo/tree/master/recipes-bsp/u-boot/files/gfex-prototype4


I find that when I make a change in the defconfig, such as "
CONFIG_CPU_IDLE=n", bitbake properly recompiles all the necessary
components... however, when I look at the running kernel configuration:

root@gfex-prototype4:~# cat /proc/config.gz | gunzip > run.config
root@gfex-prototype4:~# vi run.config
root@gfex-prototype4:~# cat run.config | grep CONFIG_CPU_IDLE
CONFIG_CPU_IDLE=y
# CONFIG_CPU_IDLE_GOV_LADDER is not set
CONFIG_CPU_IDLE_GOV_MENU=y

it seems my change still wasn't propagated? I looked at the instructions
here (
https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#changing-the-configuration)
but I'm not sure I want to duplicate my defconfig file into a second
location to bbappend the linux-yocto.

Have I done something wrong? Am I missing something else?

Giordon
-- 
Giordon Stark

--94eb2c1c5aaaa4016a056906eb1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I have a custom board with cust=
om kernel config changes. Because of that, I append the u-boot recipe as we=
ll:</div><div><br></div><div><a href=3D"https://github.com/kratsg/meta-l1ca=
lo/blob/master/recipes-bsp/u-boot/u-boot-xlnx_%25.bbappend">https://github.=
com/kratsg/meta-l1calo/blob/master/recipes-bsp/u-boot/u-boot-xlnx_%25.bbapp=
end</a>=C2=A0<br></div><div><br></div><div>with my machine.h and defconfig =
files here:=C2=A0<a href=3D"https://github.com/kratsg/meta-l1calo/tree/mast=
er/recipes-bsp/u-boot/files/gfex-prototype4">https://github.com/kratsg/meta=
-l1calo/tree/master/recipes-bsp/u-boot/files/gfex-prototype4</a>=C2=A0</div=
><div><br></div><div>I find that when I make a change in the defconfig, suc=
h as &quot;<font face=3D"monospace">CONFIG_CPU_IDLE=3Dn</font>&quot;, bitba=
ke properly recompiles all the necessary components... however, when I look=
 at the running kernel configuration:</div><div><br></div><div><div><font f=
ace=3D"monospace">root@gfex-prototype4:~# cat /proc/config.gz | gunzip &gt;=
 run.config</font></div><div><font face=3D"monospace">root@gfex-prototype4:=
~# vi run.config</font></div><div><font face=3D"monospace">root@gfex-protot=
ype4:~# cat run.config | grep CONFIG_CPU_IDLE</font></div><div><font face=
=3D"monospace">CONFIG_CPU_IDLE=3Dy</font></div><div><font face=3D"monospace=
"># CONFIG_CPU_IDLE_GOV_LADDER is not set</font></div><div><font face=3D"mo=
nospace">CONFIG_CPU_IDLE_GOV_MENU=3Dy</font></div></div><div><br></div><div=
>it seems my change still wasn&#39;t propagated? I looked at the instructio=
ns here (<a href=3D"https://www.yoctoproject.org/docs/latest/kernel-dev/ker=
nel-dev.html#changing-the-configuration">https://www.yoctoproject.org/docs/=
latest/kernel-dev/kernel-dev.html#changing-the-configuration</a>) but I&#39=
;m not sure I want to duplicate my defconfig file into a second location to=
 bbappend the linux-yocto.</div><div><br></div><div>Have I done something w=
rong? Am I missing something else?</div><div><br></div><div>Giordon</div></=
div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gma=
il_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--94eb2c1c5aaaa4016a056906eb1c--
