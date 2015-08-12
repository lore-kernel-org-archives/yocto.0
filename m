Return-Path: <todd.efflam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BD35E009C3; Tue, 11 Aug 2015 17:54:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (todd.efflam[at]gmail.com)
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
	*      [209.85.212.181 listed in list.dnswl.org]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B30E007B1
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 17:53:58 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so81265452wic.0
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 17:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=v6KEitSl/DMfOEpHzjnoqlZBS/BJro3z0BAO2BJvc44=;
	b=JSbE049/FzxpmW1N3h7chTgKdhNRaw2Uf7d5lrTbg9TGF28zOhGTwXI3Sc4FiYv1tS
	b7etB/BNKm3l3BdFL9uvmdo2Tx2yUJF4+7fLSS//F2dMG6gPJlrtrzWPgbqIAi2Ur96e
	NStP2RYQhEbqEHzkFLxFCbBbAqViuefFtadXbWDTBCE+FXwA2KRoKFyMGv7Hhtpfqqqf
	3jFtwXu/DkwlD1FvcJoT5CjAW8If/ZDr0yvq0fZoUG5VODgkWgtG8eNrcUiZLwpTBrGm
	fNmEhLMtQv5X7zT2Jbua/ll3iB4DCxDPQH7urFATWQ1xfCT9Fo/7fZEdNjMLe1rieHMi
	wt1w==
MIME-Version: 1.0
X-Received: by 10.194.121.100 with SMTP id lj4mr61612719wjb.104.1439340837210; 
	Tue, 11 Aug 2015 17:53:57 -0700 (PDT)
Received: by 10.194.157.97 with HTTP; Tue, 11 Aug 2015 17:53:57 -0700 (PDT)
Date: Tue, 11 Aug 2015 17:53:57 -0700
Message-ID: <CAHWMYyDRB9nO0cxM+-Pi4hWz_cfViiPND6qi+9cP2Y=ZRFF0Eg@mail.gmail.com>
From: Todd Efflam <todd.efflam@gmail.com>
To: yocto@yoctoproject.org
Subject: No '/lib/modules' directory in image, modprobe fails
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
X-List-Received-Date: Wed, 12 Aug 2015 00:54:04 -0000
Content-Type: multipart/alternative; boundary=089e011777b5500e2f051d12a704

--089e011777b5500e2f051d12a704
Content-Type: text/plain; charset=UTF-8

Hello,
We're trying to load and unload modules using modprobe but are having
problems.  The command fails with "modprobe: can't change directory to
'/lib/modules': no such file or directory".  There is actually no
/lib/modules directory on the image at all.  We tried to install the
linux-libc-headers package but it failed and I think the reason is we are
using the 3.14 kernel and the package is 3.19.  Any help would be
appreciated!

Thanks,
Todd

--089e011777b5500e2f051d12a704
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br></div>We&#39;re trying to load an=
d unload modules using modprobe but are having problems.=C2=A0 The command =
fails with &quot;modprobe: can&#39;t change directory to &#39;/lib/modules&=
#39;: no such file or directory&quot;.=C2=A0 There is actually no /lib/modu=
les directory on the image at all.=C2=A0 We tried to install the linux-libc=
-headers package but it failed and I think the reason is we are using the 3=
.14 kernel and the package is 3.19.=C2=A0 Any help would be appreciated!<br=
><br></div>Thanks,<br></div>Todd<br></div>

--089e011777b5500e2f051d12a704--
