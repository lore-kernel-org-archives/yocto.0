Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20BD0E00E00; Wed, 31 Jan 2018 00:05:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBE63E007B3
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 00:05:21 -0800 (PST)
Received: by mail-yw0-f180.google.com with SMTP id j128so6867145ywg.7
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 00:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Qil0rifeDxU+EZN/Kc86hITe+yLsfE+TENTvdDYdnEw=;
	b=E81kRCY05rYjCcw1UnVEFP9XTEaOB6LBUfZmv4wYT8Fia65Ob507RGPLexG3eoB3vz
	odYMz2RotiOUQwKHrTDssfRlIRfPsk8J4g307qWbRXmpmxDIgIxBTqlU+3XEstSjpHjN
	rN1SevLqoqKmfnmY2yDm02Sdu9EtryyhnAlkhvPuJuAjIp1F+VRFBcOZoHU3BsIqi03V
	zkeHW47zsoWC7ScE9GEwOm1Yzpd9ysDDAY2NqelCQwp4eVR+OJmEbzcx7Q2LQPYFrvcs
	DI22SI7QmkPUn8I5BdiZ2uSA9PciuBGp97v45j4knsCz/CMWw0NreHELyX29W+apLNcr
	Mw4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Qil0rifeDxU+EZN/Kc86hITe+yLsfE+TENTvdDYdnEw=;
	b=pWaHpCyV5G4PWrRNo4slxm+hFb6Yajl3dwLgdZ1vWpZrrRhMExTYsZsXmCrLZC79lh
	lja/VIS9hC4m4rZbM/yQ21aZqSgeKX7acKiHOmmjDM0J5sE2sWskxO6UwvfiaPnJ8aGg
	QUpPZgJfYWrxh83iNQ2SM5IiLmRYZY4xRvFHgFNRf9cVNDiRHl3cxPnlg2wSgX3mgKdc
	zbcRi5noocmBjcOqwjFZGlh/kqsH8mF55SKAhVA/Si8dQQ78THV+lY/vCz+qKzf0YqhD
	aSlwD9u7lN5JQ8NOFXsFV3d5xzN0dWbPnN69x2J5Wr4SbVoRyc+iHunLxBDIaO6yUI52
	dx2w==
X-Gm-Message-State: AKwxytdxxJF+KLPZO2HN2oAlyWAklx1UDxpVV/hbPzOFSJURMzx0USI/
	P7b9LnGMQtsEUkOLf8SXmj0adyFBTEPjDd19Wdo=
X-Google-Smtp-Source: AH8x227fa+FKCHd7uWYRrBQl9LxQYQy+R+KIVp7NWKiauNP1RODsQ1fPV9Pjw8cpTkZkuOEgXOigoI9uJFkjmqu4OZc=
X-Received: by 10.37.136.141 with SMTP id d13mr14096799ybl.446.1517385920841; 
	Wed, 31 Jan 2018 00:05:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.129.75.149 with HTTP; Wed, 31 Jan 2018 00:05:20 -0800 (PST)
From: Gaurang Shastri <gmshastri@gmail.com>
Date: Wed, 31 Jan 2018 13:35:20 +0530
Message-ID: <CAE_REAvLSX=QE=8dhf0EeOATfJKJTOn_cB=o71c5VCDhu6R9Gw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Generating Yocto SDK as .deb (Debian) pacakge
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
X-List-Received-Date: Wed, 31 Jan 2018 08:05:22 -0000
Content-Type: multipart/alternative; boundary="94eb2c1f42e0cc8da505640df0a2"

--94eb2c1f42e0cc8da505640df0a2
Content-Type: text/plain; charset="UTF-8"

Hi Team,

How can I generate Yocto generated SDK as .deb package? Currently it is in
the form of installable shell script but I want to generate it as .deb
package so that I can directly install it on my Ubuntu VM using "apt-get"
command.

Is this supported? Any documentation?

Regards,
Gaurang

--94eb2c1f42e0cc8da505640df0a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Team,<div><br></div><div>How can I generate Yocto gener=
ated SDK as .deb package? Currently it is in the form of installable shell =
script but I want to generate it as .deb package so that I can directly ins=
tall it on my Ubuntu VM using &quot;apt-get&quot; command.</div><div><br></=
div><div>Is this supported? Any documentation?</div><div><br></div><div>Reg=
ards,</div><div>Gaurang</div></div>

--94eb2c1f42e0cc8da505640df0a2--
