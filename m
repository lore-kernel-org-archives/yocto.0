Return-Path: <gab4190@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D72DE008CF; Tue,  3 Feb 2015 05:15:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gab4190[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D7B2E008BC
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 05:15:39 -0800 (PST)
Received: by mail-oi0-f42.google.com with SMTP id i138so48882949oig.1
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 05:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=guFMjMzI7kpxHpmMhdbmzg2fq9ZqUX2bE571GyGFxJg=;
	b=mTNZMXzKSSaq+BwAbhOLXeCzKWHL/8Y/rm5Qtvf9JFCFkWUXvW4FAuhcKDSaXdDRcm
	4TlTb3BJitj0jvU7nNrkjGsyjl7ysJ+w+nOkzxNo2A2nRPpCx82RmmMw6ytxgDq7CO1v
	LDb3jHnJew8OCWci7LXbtAaNq1aWbjvbCzitaP2qvPL9hFTO9Ccx7ZqNow7fCEVq1pIw
	EMpaJPjpgtyXwhOJDsSAaloxr8LEoPA9srGvWtv1hIReRUZtbl6dpSZ+B0UwKu9BYS2I
	VG9l9qiLmieJWJPULMi23DELid4WzXVC65i5YQixG8RvvLYJL6RRoAAUz+13oUb+2WEi
	Jqfw==
MIME-Version: 1.0
X-Received: by 10.202.227.11 with SMTP id a11mr12508830oih.9.1422969338841;
	Tue, 03 Feb 2015 05:15:38 -0800 (PST)
Received: by 10.76.116.39 with HTTP; Tue, 3 Feb 2015 05:15:38 -0800 (PST)
Date: Tue, 3 Feb 2015 14:15:38 +0100
Message-ID: <CAHj6CF8sBX8aYCh1zyWiCXZMsNd+30gCc+A5E-N6SMNdbf1WTQ@mail.gmail.com>
From: Gabo <gab4190@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 05 Feb 2015 11:02:28 -0800
Subject: http://adtrepo.yoctoproject.org Not Found
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
X-List-Received-Date: Tue, 03 Feb 2015 13:15:42 -0000
Content-Type: multipart/alternative; boundary=001a11408c6af7cfcc050e2edd9d

--001a11408c6af7cfcc050e2edd9d
Content-Type: text/plain; charset=UTF-8

Hallo,
it seems the server http://adtrepo.yoctoproject.org  does not respond
correcty (Page Not Found 404)

this is the output of adt-installer script

--2015-02-03 10:12:11--  http://adtrepo.yoctoproject.org/1.6.1
Resolving adtrepo.yoctoproject.org (adtrepo.yoctoproject.org)...
140.211.169.59
Connecting to adtrepo.yoctoproject.org
(adtrepo.yoctoproject.org)|140.211.169.59|:80...
connected.
HTTP request sent, awaiting response... 404 Not Found
2015-02-03 10:12:11 ERROR 404: Not Found.

Is there any problem?
thank you
Gabriele

--001a11408c6af7cfcc050e2edd9d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hallo,<br></div><div>it seems the server <a href=3D"h=
ttp://adtrepo.yoctoproject.org" target=3D"_blank">http://adtrepo.yoctoproje=
ct.org</a>=C2=A0 does not respond correcty (Page Not Found 404)<br><br></di=
v><div>this is the output of adt-installer script<br><br>--2015-02-03 10:12=
:11--=C2=A0 <a href=3D"http://adtrepo.yoctoproject.org/1.6.1" target=3D"_bl=
ank">http://adtrepo.yoctoproject.org/1.6.1</a><br>Resolving <a href=3D"http=
://adtrepo.yoctoproject.org" target=3D"_blank">adtrepo.yoctoproject.org</a>=
 (<a href=3D"http://adtrepo.yoctoproject.org" target=3D"_blank">adtrepo.yoc=
toproject.org</a>)... 140.211.169.59<br>Connecting to <a href=3D"http://adt=
repo.yoctoproject.org" target=3D"_blank">adtrepo.yoctoproject.org</a> (<a h=
ref=3D"http://adtrepo.yoctoproject.org" target=3D"_blank">adtrepo.yoctoproj=
ect.org</a>)|140.211.169.59|:80... connected.<br>HTTP request sent, awaitin=
g response... 404 Not Found<br>2015-02-03 10:12:11 ERROR 404: Not Found.<br=
><br></div><div>Is there any problem?<br></div><div>thank you <br></div>Gab=
riele</div>

--001a11408c6af7cfcc050e2edd9d--
