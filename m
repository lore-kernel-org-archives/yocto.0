Return-Path: <ellurubharath29@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4A42E00283; Mon, 23 Jun 2014 10:29:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ellurubharath29[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B189E0027B
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 10:28:52 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id hi2so4702039wib.5
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 10:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=QFNb2NHdReNHFp2dzDsb7MFqa6+EY2/oCUPmDlGjvqk=;
	b=BXkVreONzBvFSQ0amQHIqpxqQK/nsjHy6wLvYt+iwz/jQCKmOhawCNfHdd+xp2HFL1
	nuURMVrbquK/72Zk4hF78ylrwaB6EsPMwB3mwTrFGIltUkQ/pb20prL4Jrla+xjKUkjN
	3fNM1Z4CXrHPxj82NJuIrO64PwiBpbn0RZXqzw+5Ef9b0+jtgmI6Nuq75Wq/9w8JGBEj
	dq7yFYCQZqlvUs4Ff5iF69FBeg1Li4GPVRleBleXNqdbiAY6xM5NkDoumNjh0F98uIQH
	j1haohSF6z74rxUAS943Wf39IGpVvC0Qgd9yUYqmkABUYIintdQOPNCc3ojzIRId+nyS
	AQ/w==
MIME-Version: 1.0
X-Received: by 10.180.96.6 with SMTP id do6mr27648837wib.44.1403544532244;
	Mon, 23 Jun 2014 10:28:52 -0700 (PDT)
Received: by 10.194.0.19 with HTTP; Mon, 23 Jun 2014 10:28:52 -0700 (PDT)
Date: Mon, 23 Jun 2014 12:28:52 -0500
Message-ID: <CAGM0ZdR+Ud1zFOmta09FOX4s=LT9Tr3DC+m1a6VEA3oF1dpPGw@mail.gmail.com>
From: Bharath Chandra <ellurubharath29@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Cross compiler in yocto
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
X-List-Received-Date: Mon, 23 Jun 2014 17:29:06 -0000
Content-Type: multipart/alternative; boundary=f46d04447fc14560ac04fc842dd9

--f46d04447fc14560ac04fc842dd9
Content-Type: text/plain; charset=UTF-8

Hi,

I am new to yocto. I have a gumstix board which is up and running, but it
does not have GCC on it. I have to compile and run some c programs on my
image. What is the process to do that?? Is there any documentation
available about the cross compiler. Kindly provide me any pointer which
would help.

-- 
Thanks & Regards,
Bharath Chandra Elluru.
Contact Number:785-979-4875.

--f46d04447fc14560ac04fc842dd9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div>I am new to yocto. I have a gumstix =
board which is up and running, but it does not have GCC on it. I have to co=
mpile and run some c programs on my image. What is the process to do that??=
 Is there any documentation available about the cross compiler. Kindly prov=
ide me any pointer which would help.<br clear=3D"all">
<div><div><br>-- <br><div dir=3D"ltr">Thanks &amp; Regards,<div>Bharath Cha=
ndra Elluru.</div><div>Contact Number:785-979-4875.</div></div>
</div></div></div>

--f46d04447fc14560ac04fc842dd9--
