Return-Path: <ravchand_jm@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CD8DE00C43; Tue, 13 Nov 2018 02:25:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ravchand_jm[at]yahoo.co.in)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.244.39 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic311-22.consmr.mail.sg3.yahoo.com
	(sonic311-22.consmr.mail.sg3.yahoo.com [106.10.244.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52233E00C3C
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 02:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1542104750; bh=rKlJu1Q8f6PeSGicAw38YZfc6JqxueMngCw6OPGr5uo=;
	h=Date:From:To:Subject:References:From:Subject;
	b=NxwdKQ5JiCvAa1mNjQ7ln5Navt95I1LYExPp2tcKuXObnyluSPk/woRl60WqkS0aUDZ1TiKamfilkea89E2562kfR2hwdz7FmxNW0BU46SSw0JvpUdhVyO7lYoGMfrdhyWQITIsFp/45xC1LmmM2QcZy9YprozvtmPiBMXDXjsTCPqfnW+LEBCZrtA5ZCUACRuQVryMdbwEc7a6f5grBCSQsL3YIVsf5M7UDbxJwagCylsw2ZlDLt+2PiVh1QHGbcYjtrYqv8wy8/ha93ijjKH2NllEcPHV6e/kuMddaVkzrNJh6agQGKilm/1DXWsuPJMyIo/AfaSAjmgKDK5HTLA==
X-YMail-OSG: kLZIYxEVM1m4B.u4Sl46hA3Z_wOFMnpXE4wpf4CzSpLYzU5Qx8K9tTHEoP9TJT3
	ckFyGSfvVnXvSRnQKxHL7CF1wl87cEy9_6vRPax.481Jfvg7_3Pep97Hvtvx_QIjeJH4BoHdfJDH
	uJNYdnxzCzMfH.sfFPtO.dTHxxOBNaQ3VjMPZfSOZ1gjxUPKpllF3ANwMHTtypLsbP0Eer_MdqCI
	2u6oDISldRJXO_nan.jQuuSG.3k22v49ed6Rif0zIWa52jQ1e4hMm0xhEDnva5u3HQQWUEgAl7YM
	xpU1P0mhgiz.skgrVsnhZMCfSoWPFuEKBoUsMMEDNkBekLBnVqnKNB3y7GHdMjJzWYlnQBhqFP0c
	mcm6vyDOpDLih593_F8Nne4m4gEHoIdG064Snt8pIN_lPv71XkqaqT7EEke8L6DFtU7oHCIvzwqA
	2BtrqNamIp8YwkFjtAIo4vw34fhYyKAdQ7XZrMc7L3RTBuZSk2ALuCxpZh_VHpMXaZJt7lhZH8bQ
	EF1YKITe5SPe4czA3KJuRcVJwwuQZULl3RzFIlduUCB7A8_1xBPodcMr4u7wrS3UaZZFy0vNls6v
	YVAZu_.h85rApZ8cwQpneMAzP5rkb8eSTYG8VOgoeRbeBuYlsDlgcS4uoSWmQfrRWe3qHiJ8s1Cq
	3GY9_brXGRjleAAx4W6h2ydx6BsxEBhHXvl4KDNZ__SWbPYx4gW1piZETsipCistnYPEgIO6zJKD
	kz3TTWB2FePx_Iq4cdK5XRTfGImLwVtMgX7RkLLh8KTDIA.sGwJBa9jl5rjI1UgHL.zj7lgibpKu
	zMYjiEF2QyMs2aREFyzoQYgRgSJyrAmxWFsz.QY8vf.jf9Nun6QMU09Ivr8g95PCkp4pLxT3lvm_
	sI.DHNVrLiNOYwOfxjvn1CfQ7KyNCcQLy7NN9Lmzhp.dbi15kUsTL1mxinl9VF1uwFd7j6gnqcMg
	zWlkfCOuiWymksY9QKjXs0883.hCgVDyYv_ZEJNYTy8LJJSb6yfRIf0VjKw2YbMY.oUTiFi3ONGy
	0AtQrvwv9KE_y59S4pawDcNSjNGR_Yb_R1ePU75U7
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic311.consmr.mail.sg3.yahoo.com with HTTP;
	Tue, 13 Nov 2018 10:25:50 +0000
Date: Tue, 13 Nov 2018 10:25:49 +0000 (UTC)
From: ravi chandran <ravchand_jm@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <452939319.1586293.1542104749758@mail.yahoo.com>
MIME-Version: 1.0
References: <452939319.1586293.1542104749758.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.12732 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77
	Safari/537.36
Subject: lib32-glibc headers populated instead glibc headers in the SDK toolchain - yocto 2.2.2
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
X-List-Received-Date: Tue, 13 Nov 2018 10:25:53 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1586292_328686942.1542104749749"

------=_Part_1586292_328686942.1542104749749
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi all,
I am working in one project where both lib32 & lib64 need to be supported. Hence, lib32-glibc & glibc both are there in yocto build. In the final toolchain, after running "bitbake <image> -c populate-sdk", it is randomly, lib32-glibc headers are getting populated instead of glibc headers.
Ex: in the toolchain, <sysroots_dir>/aarch64/usr/include/bits/endian.h - lib32-glibc header file content seen instead glibc header file content.
Please let me know if anybody has any solution/work-around for this.
Thanks in advance,Ravi

------=_Part_1586292_328686942.1542104749749
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp437c0028yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><span><div style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-=
serif; font-size: 16px;">Hi all,</div><div style=3D"font-family: Helvetica =
Neue, Helvetica, Arial, sans-serif; font-size: 16px;"><br></div><div style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
6px;">I am working in one project where both lib32 &amp; lib64 need to be s=
upported. Hence, lib32-glibc &amp; glibc both are there in yocto build. In =
the final toolchain, after running "bitbake &lt;image&gt; -c populate-sdk",=
 it is randomly, lib32-glibc headers are getting populated instead of glibc=
 headers.</div><div style=3D"font-family: Helvetica Neue, Helvetica, Arial,=
 sans-serif; font-size: 16px;"><br></div><div style=3D"font-family: Helveti=
ca Neue, Helvetica, Arial, sans-serif; font-size: 16px;">Ex: in the toolcha=
in, &lt;sysroots_dir&gt;/aarch64/usr/include/bits/endian.h - lib32-glibc he=
ader file content seen instead glibc header file content.</div><div style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
6px;"><br></div><div style=3D"font-family: Helvetica Neue, Helvetica, Arial=
, sans-serif; font-size: 16px;">Please let me know if anybody has any solut=
ion/work-around for this.</div><div style=3D"font-family: Helvetica Neue, H=
elvetica, Arial, sans-serif; font-size: 16px;"><br></div><div style=3D"font=
-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px;">Th=
anks in advance,</div><div style=3D"font-family: Helvetica Neue, Helvetica,=
 Arial, sans-serif; font-size: 16px;">Ravi</div></span></div></body></html>

------=_Part_1586292_328686942.1542104749749--
