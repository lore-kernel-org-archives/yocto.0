Return-Path: <nitesh.guinde@gec.ac.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DED20E00D36; Mon,  6 May 2019 02:10:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B49DEE00D00
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 02:10:22 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id m7so8223752ioa.6
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 02:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gec.ac.in; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=B0oNmkudeDxezU+6lwJ553Kc3LnqpU+i84b661GRXoE=;
	b=Af0kXXsURCiS3Bmcfoj5PzH6BOKPbxon7M20Uhrwrs7EgFeeSdFKMMNClSx2GPgo+0
	aRitHFdaFA14RbdCsdKPChG1PV7sUorAqD9wqNdeed4RgRJAcC/7mnxTVecTwPFdL1H8
	yLYPOh5r5dbnqaIfITnINRTZehcJ30g5ndchs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=B0oNmkudeDxezU+6lwJ553Kc3LnqpU+i84b661GRXoE=;
	b=hm6/NxpUm1GxgU0LdeCvWxm5EOB0bgQ6IKP30Q1F71yN+PNKWWs7dCwUO554JTeHYI
	rwtfYN+lOu/ByQx3mnT0gN7W4kWZMZy6KFfLorUIFJami5yntUgsgcK4cf+svuh7/0hQ
	FFRuiAbDdIgn7AgDLXzZAX/2g6KcbfRWLLX7UPsMDyMws3+/Um8tIecGK1g9lepSv7dy
	XBrKp5ejdix/T8wS3hmB5O1EiJznOTg7CJDYYFVALxaYxZLxQ1lbLjcvsXVCsf7hiHbD
	jib6nXMRfYSRq7Yb8Jb/IqIfPA0y1LqGiQGoGBmVDFZDAS2t3E06xlWL9E620f09sL9m
	FQuQ==
X-Gm-Message-State: APjAAAWmgf6i1SyxtJPl8usOYZvF7YxJ1mCUSFwHvV8rEYMD0fcsljEH
	m3O3UnzrMO/dKdrQ6EjG9/BSZEVtcjL+Zdnj3hDHc/bfaAI=
X-Google-Smtp-Source: APXvYqwN8smCNORVn23plxyVbo+Es1H6lthQmDCialJ10ZvV05nDHK/OYU/tJGj5CD+bgnIe6b8yntgOxhUSmGK7V1w=
X-Received: by 2002:a5e:a51a:: with SMTP id 26mr1209897iog.171.1557133821313; 
	Mon, 06 May 2019 02:10:21 -0700 (PDT)
MIME-Version: 1.0
From: Nitesh Guinde <nitesh.guinde@gec.ac.in>
Date: Mon, 6 May 2019 14:40:09 +0530
Message-ID: <CAP1p9H7NzM-VbmnYQsf9KuKM7+WyJ0Q56sVDoDU5zwfCZf9U6Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 06 May 2019 08:58:58 -0700
Subject: xilinx Zynq zedboard gnuradio
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
X-List-Received-Date: Mon, 06 May 2019 09:10:26 -0000
Content-Type: multipart/alternative; boundary="000000000000499b490588347815"

--000000000000499b490588347815
Content-Type: text/plain; charset="UTF-8"

Hi Philip,

I am trying to port gnuradio onto zedboard. I used the following link
https://github.com/balister/oe-gnuradio-manifest

and build the images folder for zedboard-zynq7.
 Then I copied uImage, boot.bin dtb and uenv.txt onto the sd card boot
partition

untarred the gnradio-dev-image-zedboard-zynq7.tar.gz onto the rootfs
partition..

However the card doesnt boot.

Just wanted to find out if the process given in the following links are
fine or any other tweaking is needed.


Thanks,
Nitesh B. Guinde

--000000000000499b490588347815
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Philip,</div><div><br></div><div>=
I am trying to port gnuradio onto zedboard. I used the following link</div>=
<div><a href=3D"https://github.com/balister/oe-gnuradio-manifest">https://g=
ithub.com/balister/oe-gnuradio-manifest</a></div><div><br></div><div>and bu=
ild the images folder for zedboard-zynq7.</div><div>=C2=A0Then I copied uIm=
age, boot.bin dtb and uenv.txt onto the sd card boot partition <br></div><d=
iv><br></div><div>untarred the gnradio-dev-image-zedboard-zynq7.tar.gz onto=
 the rootfs partition..</div><div><br></div><div>However the card doesnt bo=
ot. <br></div><div><br></div><div>Just wanted to find out if the process gi=
ven in the following links are fine or any other tweaking is needed.</div><=
div><br></div><div><br></div><div>Thanks,</div><div>Nitesh B. Guinde=C2=A0 =
<br></div></div></div>

--000000000000499b490588347815--
