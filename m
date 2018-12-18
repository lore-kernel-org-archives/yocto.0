Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DC27E00AC5; Tue, 18 Dec 2018 10:28:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6D30E00950
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 10:28:02 -0800 (PST)
Received: by mail-lj1-f173.google.com with SMTP id k19-v6so15055445lji.11
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 10:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=+R1hfqxqhyRyPn6yvNi6BoVsJWAPA7J700q83xjJF/s=;
	b=mBJ5tsUuUc4fd1grC56d9IymiX+Y5XAlOCG2xvTGd+dVNbqopD5dg0G8wT/OZ+fTqb
	H2In3ioQmA5lnsG2U2bj13PPxKHbOFcIbiFrUajC7R8LUoG9vOBSgLn08ykIod19TVMv
	25vsTlIlpoJo9fYRwXDUwVs9eka330RDmrXDy0L47+ctlyh0Uf4b+Qu7Lh/ZcDbay6d3
	3n1mhJYlSHoJsT1HU+CUWlJuMiXFBJR+Bg3Dq6WYY/L+LBppgx6NZnE2k6prANDU1qlq
	Vu5vCS2z/B74DARFW6XMZm5Rkh0oQtltj9AKAAkCTDqRXiXsWghrukOLTTF2iEVKs2HO
	i4Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+R1hfqxqhyRyPn6yvNi6BoVsJWAPA7J700q83xjJF/s=;
	b=TrNTCtcY8cXUe+2OyDSw7l76RjUB4+RT21CTZaR2z7OGL/VeT/UQ+UUkJftRBpf1PS
	BbIEzvQZSESkVnKqBnC3iMvBwGyjmwHjNUuN3n+nbkqZHGIOM0TNGlTgfudcTKQy61Kv
	a6rzK7XIYNEhV4AU2Bzh0S5vu7VwR1xD/7kWEVpzy+Aax+iH1b8ciz7sB4T6eAW7tUfs
	x0llImQT+GnFvTF5n8LZMCxET6Th9AlNWYIwzXCB6UUvzI3n//9xDwnaGqBprz/jCH1R
	YOsVOI9+xWG8hslLrobsNHS5K5RxQjUpgfkh9NJYLUPnt+R2z7nWjQlfbSZOrQs3upuw
	fLzg==
X-Gm-Message-State: AA+aEWaCnhJh5O4+6fcrlg+SUWmI9Uo51tRjobS1AShQ/QR7fYUajJ3N
	FGUHhH9rWQhmiP8IZni4GgZeTFDp0984cMx8Mnp8NbKF
X-Google-Smtp-Source: AFSGD/WOjWpOe0+RWsTfCbBXr1IlQP4tsUWtMNxNwqqt4RTY7dnGR7fAGxEMBVkyAkKOfRDWFth4gOSBq8DvKJ/SedY=
X-Received: by 2002:a2e:4784:: with SMTP id
	u126-v6mr3516596lja.124.1545157681293; 
	Tue, 18 Dec 2018 10:28:01 -0800 (PST)
MIME-Version: 1.0
From: A <aaron.biver@gmail.com>
Date: Tue, 18 Dec 2018 13:27:50 -0500
Message-ID: <CAMd7AX8y4PXgn-1eajtG8CxB7+SjyzdYCokEvwg3PAE+5HzyiA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Question about temporary directories
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
X-List-Received-Date: Tue, 18 Dec 2018 18:28:03 -0000
Content-Type: multipart/alternative; boundary="000000000000b72efe057d500e06"

--000000000000b72efe057d500e06
Content-Type: text/plain; charset="UTF-8"

I'd like multiple "helper" recipes to contribute files to a temporary
directory on my build host, and then a final recipe to combine them into a
compressed file.

But I DON'T want the helper recipe's files to get installed on the target
system.  My goal is to have them put into a jffs2 image, which will
eventually get flashed onto a target partition using JTAG.

So, I suspect I would have to fly under the radar in yocto, having the
helper recipes install something into the host filesystem, then have the
final recipe know about that location.

Any advice how I can do this as "properly" as possible in yocto?

Aaron

--000000000000b72efe057d500e06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;d like multiple &quot;helper&quot; recipes to contri=
bute files to a temporary directory on my build host, and then a final reci=
pe to combine them into a compressed file.<div><br></div><div>But I DON&#39=
;T want the helper recipe&#39;s files to get installed on the target system=
.=C2=A0 My goal is to have them put into a jffs2 image, which will eventual=
ly get flashed onto a target partition using JTAG.</div><div><br></div><div=
>So, I suspect I would have to fly under the radar in yocto, having the hel=
per recipes install something into the host filesystem, then have the final=
 recipe know about that location.</div><div><br></div><div>Any advice how I=
 can do this as &quot;properly&quot; as possible in yocto?</div><div><br></=
div><div>Aaron</div><div><br></div></div>

--000000000000b72efe057d500e06--
