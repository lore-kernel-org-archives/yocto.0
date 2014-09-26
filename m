Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFBF6E007A2; Thu, 25 Sep 2014 22:37:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.98 listed in list.dnswl.org]
Received: from exprod8og109.obsmtp.com (exprod8og109.obsmtp.com [64.18.3.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64A4BE00769
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 22:37:30 -0700 (PDT)
Received: from mail-ig0-f181.google.com ([209.85.213.181]) (using TLSv1) by
	exprod8ob109.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCT7mhWLIGnW5UXvsv3g47qHrsUJZXYM@postini.com;
	Thu, 25 Sep 2014 22:37:32 PDT
Received: by mail-ig0-f181.google.com with SMTP id h18so9671197igc.2
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 22:37:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=FRuUiJidwk0xFtXn1CwSF1fU9Cs9hH+c+WQ1fiYLmh4=;
	b=KSuur5Oigrg7Z43QYOom1mXHUscFiBKx/f+eNTvvtZ/GdhCBKA6k5Q2TMlHLG1QRI+
	cq1rk96cp91cJooLhmComiXHUpND+FKE6fadG95DAEGBnw+8YyCXl+N4uYcVqao3h4Xs
	ongxdfX56I6ADJIcldVB+Gff5ICt4ZH/DMVRfqMoIHQUe4iN+rtV+nCc7Jt3CZiEM3Qo
	t6Ilfl0Hx4+TUNg43WHJznH7H4RhDRlchgpL3lW5bCEJ6HPCn6f6TK0QoZ2pOJsGnQcI
	/zN2QCKD4S2jYwWnNWzN6CydXqN6tyT97ELdqTdFvIoDlKjJRum4x5trFk3BHSvtPzff
	TixQ==
X-Gm-Message-State: ALoCoQlaEjLCdFPqYQmIp5Ko6znHRxhjuScOu9hMKq+HD5T5p8TPSGiMQTIO5C/b+2GePce4uSjj3jth5s0sR0IZc0q8gB+UmpmpVhrd5Ca7xgXDAofYPEbNu3Hr3pkAO1uw+mn/LAsYTA4tDVE9BNQSt6FNUTyD7Q==
X-Received: by 10.50.142.104 with SMTP id rv8mr27566616igb.21.1411709849953;
	Thu, 25 Sep 2014 22:37:29 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.50.142.104 with SMTP id rv8mr27566592igb.21.1411709849627;
	Thu, 25 Sep 2014 22:37:29 -0700 (PDT)
Received: by 10.42.128.140 with HTTP; Thu, 25 Sep 2014 22:37:29 -0700 (PDT)
Date: Fri, 26 Sep 2014 13:37:29 +0800
Message-ID: <CAJrRHk4r+MngXE5oAUhde40u+KNNS9FYMjGDJw0NR1oqJU-9LQ@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Wildcard in RDEPENDS when exporting perl modules to SDK
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
X-List-Received-Date: Fri, 26 Sep 2014 05:37:34 -0000
Content-Type: multipart/alternative; boundary=001a11c3db001d37f90503f150d8

--001a11c3db001d37f90503f150d8
Content-Type: text/plain; charset=UTF-8

Good day Yocto Dev Community,

I would like to ask how to include all perl modules into nativesdk? I see
that all RDEPENDS for perl has a prefix of ${PN}-module-perl-*. How can I
include all perl modules into the nativesdk host package group? Is there a
wild card that can be used?

Thanks,
Joseph

--001a11c3db001d37f90503f150d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Yocto Dev Community,<div><br></div><div>I would l=
ike to ask how to include all perl modules into nativesdk? I see that all R=
DEPENDS for perl has a prefix of ${PN}-module-perl-*. How can I include all=
 perl modules into the nativesdk host package group? Is there a wild card t=
hat can be used?</div><div><br></div><div>Thanks,</div><div>Joseph</div></d=
iv>

--001a11c3db001d37f90503f150d8--
