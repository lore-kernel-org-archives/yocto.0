Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E39A6E00782; Mon,  9 Jan 2017 00:50:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71BAEE0050B
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 00:50:07 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id c85so90664503wmi.1
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 00:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zJGzd47AJx8BIbl+uh1sgh962eF2EsNyWc+dmBZt3RY=;
	b=I4kca7ZbOPOBQyr9ptjKfr4xY6eukFVfsxzQIS43kCPouR6VRa33rrUoiXW/a/8WII
	mLaVFefu7dPiNEkAhkWahXBbvZwGl7ruerleRsjOereFELsYacPQkoYl5L8xs4c2uamy
	RL7gpJgnqHLNRnicGLl1WRf/dvnGfFLwdid4T4DaCq4Lz4DvaYsqQ9FSWMiEKUHjr6m3
	KUf7uJMNOkH1orRxL5U5OCkIMGAB9GgYOcTY7iFHcEMHt86E0yWKbhyt0eZA41REfV2L
	2cmDxIaZn8bvd+Al6qZGhgvrZwkYcPYyft0la49kspBRx7erppPbFpz9mHEZKDx1ajtj
	FfhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zJGzd47AJx8BIbl+uh1sgh962eF2EsNyWc+dmBZt3RY=;
	b=AL/H9LkspatRbXsuTNStXUgIDkfwssJnuaeSLgjOtq/hizlczxg7VFP0BdNxue3Lye
	2m4bSRxXW/+Hj8tqNTPXVZzlLdXovy2oMhNvoFHDQjIIIUSdwFTGEQ01U6R/NEFQM6sm
	lmq4VRqzQtq+dTVonf2Vi7yf6CurXz0/dBhIxGyg0wRjM1XZJdzrwkf5GZzxtbbUFHn+
	zURi1MMohDzTpn5+bhy8RP1tddydNj0KnpBC9AYPWmzfRkcXVDSRfcQ9FzuYt8MuI1gl
	5SWfRZP+utyLkrixQwkug2jLzRNuQC/M16h9cMv4n6xcZtjwz1qf9XwMCclHl2+ojwUl
	Ptig==
X-Gm-Message-State: AIkVDXKoqH7qfLutpODexGp+PjWbVBUvAKTrX1ahgZqpGyVoQSusy5fFABDXAYB/OKyNOHyfyD+sy9vZI368Xg==
X-Received: by 10.28.170.134 with SMTP id t128mr3709320wme.29.1483951806083;
	Mon, 09 Jan 2017 00:50:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.192.1 with HTTP; Mon, 9 Jan 2017 00:50:05 -0800 (PST)
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Mon, 9 Jan 2017 14:20:05 +0530
Message-ID: <CA+pXca2qNC6wAjDe5rpaGBZn=1EiB46QTVfse0_HzozjcvMHEg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Erroe while compiling Altera kernel
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
X-List-Received-Date: Mon, 09 Jan 2017 08:50:12 -0000
Content-Type: multipart/alternative; boundary=001a1144392843f5990545a57438

--001a1144392843f5990545a57438
Content-Type: text/plain; charset=UTF-8

Hi,
I am upgrading Yocto version from daisy to krogoth. In this process when
building kernel, i am getting below error

ERROR: linux-altera-ltsi-3.10-r1 do_deploy: Taskhash mismatch
c4875fc746f382558fe137fc1188dfe7 verses 1c5cadda9369cc54cb44d732ed6004e8
for /home/rajesh/k2_poky-krogoth/k2/source/platform/build/../
meta-altera/recipes-kernel/linux/linux-altera-ltsi_3.10.bb.do_deploy
ERROR: Taskhash mismatch c4875fc746f382558fe137fc1188dfe7 verses
1c5cadda9369cc54cb44d732ed6004e8 for /home/rajesh/k2_poky-krogoth/
k2/source/platform/build/../meta-altera/recipes-kernel/
linux/linux-altera-ltsi_3.10.bb.do_deploy

In linux-altera.inc file i have below lines

do_deploy_dtb() {

DTB_NAME="${DTB_FILE}-${DATETIME}.dtb"

}

do_deploy_dtb[vardepsexclude] = "DATETIME"

If i commet do_deploy_dtb[vardepsexclude] = "DATETIME" also iam facing same
error.

Any suggestions...

Thanks in Advance.

Thanks,
Praveen

--001a1144392843f5990545a57438
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi,<br></div>I am upgra=
ding Yocto version from daisy to krogoth. In this process when building ker=
nel, i am getting below error<br><br>ERROR: linux-altera-ltsi-3.10-r1 do_de=
ploy: <span style=3D"color:rgb(255,0,0)">Taskhash mismatch </span>c4875fc74=
6f382558fe137fc1188df<wbr>e7 verses 1c5cadda9369cc54cb44d732ed6004<wbr>e8 f=
or /home/rajesh/k2_poky-krogoth/<wbr>k2/source/platform/build/../<wbr>meta-=
altera/recipes-kernel/<wbr>linux/linux-altera-ltsi_3.10.<wbr>bb.do_deploy<b=
r>ERROR: Taskhash mismatch c4875fc746f382558fe137fc1188df<wbr>e7 verses 1c5=
cadda9369cc54cb44d732ed6004<wbr>e8 for /home/rajesh/k2_poky-krogoth/<wbr>k2=
/source/platform/build/../<wbr>meta-altera/recipes-kernel/<wbr>linux/linux-=
altera-ltsi_3.10.<wbr>bb.do_deploy<br><br></div>In linux-altera.inc file i =
have below lines<br><br>do_deploy_dtb() {<br><br>DTB_NAME=3D&quot;${DTB_FIL=
E}-${<wbr>DATETIME}.dtb&quot;<br><br>}<br><br>do_deploy_dtb[vardepsexclude]=
 =3D &quot;DATETIME&quot;<br><br></div>If i commet do_deploy_dtb[vardepsexc=
lude] =3D &quot;DATETIME&quot; also iam facing same error.<br><br></div>Any=
 suggestions...<br><br></div>Thanks in Advance.<br><br></div>Thanks,<br></d=
iv>Praveen</div>

--001a1144392843f5990545a57438--
