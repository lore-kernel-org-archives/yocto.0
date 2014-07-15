Return-Path: <ellurubharath29@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0A52E006ED; Tue, 15 Jul 2014 08:18:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ellurubharath29[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F6CE00543
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 08:18:07 -0700 (PDT)
Received: by mail-wg0-f49.google.com with SMTP id k14so5151445wgh.32
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 08:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=POMTBg6EhSAp9a/ZNZs4eVvAg/CWDuJUdpUFby0NMZk=;
	b=ieqK0/HiQDU+flS6IisVNVSG0HXDbMwTAed66iemddb6l+g2BsdwrSxY9EM2pNN0WX
	BNsPA3fslCKhoZkfMECk8FricAYlCeuq+xifOKpqedv1i319AGk9vQymJWVxDzh4Ui1w
	Neg4AqJaqsgCkJ4jQYFsvIjgiS1C9aLQg/ZgfdT+iwygnLtlaMW5xvRSMRslFZ2EV3uB
	uAYsSWvvV2NDGJOpbe2QumqnmkFK8U3Z+NaiT5LXyAsmjh4/+WS/QxWLaJQovktC0b0r
	SLyfAZjTNXNQRvYdxpMSnvc4+GNGj8ArrkhpxO+tMoxRGZ97WGYIDLl6hgPzjtwYx67U
	QTPg==
MIME-Version: 1.0
X-Received: by 10.181.11.232 with SMTP id el8mr6424105wid.57.1405437487085;
	Tue, 15 Jul 2014 08:18:07 -0700 (PDT)
Received: by 10.194.78.46 with HTTP; Tue, 15 Jul 2014 08:18:07 -0700 (PDT)
Date: Tue, 15 Jul 2014 10:18:07 -0500
Message-ID: <CAGM0ZdSsrHfzDq8CHFv0M5qJi354pWyoijzU5w5Hg+tzjRW0UQ@mail.gmail.com>
From: Bharath Chandra <ellurubharath29@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Boot Process of gumstix
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
X-List-Received-Date: Tue, 15 Jul 2014 15:18:10 -0000
Content-Type: multipart/alternative; boundary=f46d043c80722c003d04fe3cea18

--f46d043c80722c003d04fe3cea18
Content-Type: text/plain; charset=UTF-8

Hi,

I would like to analyze the startup process of gumstix board. What happens
when we boot a gumstix board, for eg: first the MLO will be called and then
it will call u-boot.img.... I would like to know what does MLO do and
functionalities of other files. Can anyone of you provide any pointer where
I can get good documentation about the startup process.

-- 
Thanks & Regards,
Bharath Chandra Elluru.
Contact Number:785-979-4875.

--f46d043c80722c003d04fe3cea18
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I would like to analyze the startup process of =
gumstix board. What happens when we boot a gumstix board, for eg: first the=
 MLO will be called and then it will call u-boot.img.... I would like to kn=
ow what does MLO do and functionalities of other files. Can anyone of you p=
rovide any pointer where I can get good documentation about the startup pro=
cess.<br clear=3D"all">
<div><br>-- <br><div dir=3D"ltr">Thanks &amp; Regards,<div>Bharath Chandra =
Elluru.</div><div>Contact Number:785-979-4875.</div></div>
</div></div>

--f46d043c80722c003d04fe3cea18--
