Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82840E0080C; Thu, 29 Jan 2015 05:04:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
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
	*      [209.85.217.176 listed in list.dnswl.org]
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C65E006EF
	for <yocto@yoctoproject.org>; Thu, 29 Jan 2015 05:04:30 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id z12so27719932lbi.7
	for <yocto@yoctoproject.org>; Thu, 29 Jan 2015 05:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=1tw+EumbXK9Cc7wkkIfQdaZloCyRIJ5n45mrcWaNOOw=;
	b=EacNW6cCeHe6UeM47IhMZoIxu3KXe4fl68Zu8Kb63+M9Ar6gQcynQ5Luquc/5UFTyi
	JeUe6BHi0Ex/LqSE7ipjPW+sCYBIkdj+WkcpKTBOcjBBYM7yTSRiy88rq4J1kFseKdOU
	1wvh3wwRNKCP0DHznE1fbyp4I/oav5Qs2BBVuAa5zOUeTJoeaNi1B2aqXDsrHQ5AoCd9
	KM+2WAFzkE5k05cB7yXlvYzIkJoKIn5fSNNMu8oXMj51RHOlmVnd30gC+lEmBgL6PL2X
	Upf6ebR9CB7u5qYwmmrKimF6pyM6LcWbgYU0effr4/p8Hd9HOw9Q09aJ51srvEva0H8g
	bQCg==
MIME-Version: 1.0
X-Received: by 10.152.183.196 with SMTP id eo4mr689572lac.0.1422536668672;
	Thu, 29 Jan 2015 05:04:28 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.25.24.12 with HTTP; Thu, 29 Jan 2015 05:04:28 -0800 (PST)
Date: Thu, 29 Jan 2015 11:04:28 -0200
X-Google-Sender-Auth: SdWE_iq2X8HGIQaOumkZ6skDyXU
Message-ID: <CABKVDBBtdxVsPibnytKQUmBJ0wot2hwyQ75mkxMW6=FAnx5vEw@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Not create directory in /
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
X-List-Received-Date: Thu, 29 Jan 2015 13:04:35 -0000
Content-Type: multipart/alternative; boundary=001a113456d4d0f86e050dca2040

--001a113456d4d0f86e050dca2040
Content-Type: text/plain; charset=UTF-8

Very many thanks Gary, it worked!


-- 

*Att,Cleiton Bueno*

--001a113456d4d0f86e050dca2040
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Very many thanks Gary, it worked!<br clear=3D"all"><br><br=
>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><i><b>=
Att,<br>Cleiton Bueno</b></i><br><b><font color=3D"#cc0000"></font></b></di=
v></div></div></div></div></div></div></div></div></div>
</div>

--001a113456d4d0f86e050dca2040--
