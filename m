Return-Path: <terry.farnham@quanergy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C022E004D8; Wed, 18 Jan 2017 16:35:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.180 listed in dnsbl.sorbs.net]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0890]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9179E004A0
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 16:35:19 -0800 (PST)
Received: by mail-qt0-f180.google.com with SMTP id v23so40258595qtb.0
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 16:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=quanergy-com.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:thread-index:date:message-id:subject:to;
	bh=9ljLvF4G6sfG6ZRifXZWGiZzTuhHGQnFb4yxKSrU3/g=;
	b=qpQsQPLIt5aV4GIlGCnE/GQegCMlJX+ApTYx21gUgJrS+jUDLj6dgfZ0PJMHY/Sjgh
	AK6s/2Ug9zbrqPkpyxkbrAanlspDAoKtz8oS9jn4MQKU9Z/mAp26uhRWBiR/FUzOg2Lk
	dOdwRhn5IhAAMyi6pmyFI4l3gLYFHWZSKO/15aKPl7MYenx0RLsqZZ8wWy+iU4OnDMq6
	F6WVhYHK622x7RHujdHEsWjaiiplgx4mUdisZ/0N1sZ6ZXNUVy9rjf9wczQouGC8lsc1
	p/8fBJHDuafE2BpjP3xYqU2fP6qKrnUqU1dJtYAIygPAnDoQBr+0+WwEd2iX8zDER1rm
	fs/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:thread-index:date:message-id
	:subject:to;
	bh=9ljLvF4G6sfG6ZRifXZWGiZzTuhHGQnFb4yxKSrU3/g=;
	b=MBI/ga89u96eX3OYn5d2FtbgR/MqOwBJBd24QSvofMFrtwH3ME+jZWdBL266PeAgCp
	yj3rW4w2+RhJ/vXhs0ZlELqbLPWc2YW+Gm8yFFp3LyCl3THjXcPkpIwDefDyyMaqGlQB
	b2k4vzciRnBNuwkYv6+QbLxfmS04WGpBkcqt3LeUSdzL+XqnrheIMw2EsvX+On9u/nTh
	wYEPKc5RA+SIT8S7fHIOJ19pB1nqcKb5EW9i9O3md0qCcIDN0NtKFiRyN2QsJq4c2f/D
	t9KYatW5aB8hbZszW60bylrPoI1jS3IxHaT/eO2Y0SNVYWszTYqxTOntSlgrpq49GRTd
	0++A==
X-Gm-Message-State: AIkVDXKo15zNchd19k6oA6JDEQQgTrqTqmUc3L5Xwk1H+wx0NmOubo/238l9DATHHPLDuLEnOtn+v29sS/rA8zTQ
X-Received: by 10.55.105.129 with SMTP id e123mr5875756qkc.229.1484786118506; 
	Wed, 18 Jan 2017 16:35:18 -0800 (PST)
From: Terry Farnham <terry.farnham@quanergy.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdJx67cY33ANn+E9SQyLsg8Lv0PMSQ==
Date: Wed, 18 Jan 2017 16:35:17 -0800
Message-ID: <fd9a97fabe9dcd9bf8938aa7b790b4f7@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Flatbuffers
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
X-List-Received-Date: Thu, 19 Jan 2017 00:35:20 -0000
Content-Type: multipart/alternative; boundary=001a114872ba2975f9054667b5a3

--001a114872ba2975f9054667b5a3
Content-Type: text/plain; charset=UTF-8

Curious if anyone has ever built googles flatbuffers for embedded and
whether or not they might share their recipe?



Thanks,



Terry

--001a114872ba2975f9054667b5a3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dus-ascii"><meta name=3D"Generator" content=3D"Microsoft Word 14 (filtere=
d medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div =
class=3D"WordSection1"><p class=3D"MsoNormal">Curious if anyone has ever bu=
ilt googles flatbuffers for embedded and whether or not they might share th=
eir recipe?</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Than=
ks,</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Terry</p></d=
iv></body></html>

--001a114872ba2975f9054667b5a3--
