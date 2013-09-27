Return-Path: <petertornel@yahoo.com>
Received: from nm36.bullet.mail.bf1.yahoo.com (nm36.bullet.mail.bf1.yahoo.com
	[72.30.239.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D328CE015A6
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 07:16:11 -0700 (PDT)
Received: from [98.139.212.146] by nm36.bullet.mail.bf1.yahoo.com with NNFMP;
	27 Sep 2013 14:16:10 -0000
Received: from [98.139.212.207] by tm3.bullet.mail.bf1.yahoo.com with NNFMP;
	27 Sep 2013 14:16:10 -0000
Received: from [127.0.0.1] by omp1016.mail.bf1.yahoo.com with NNFMP;
	27 Sep 2013 14:16:10 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 9154.32734.bm@omp1016.mail.bf1.yahoo.com
Received: (qmail 3742 invoked by uid 60001); 27 Sep 2013 14:16:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1380291369; bh=89B6WMS+fBcQHJeIGKozXqjeFzR2Kz4Wd4Chj5vF7GA=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=Rowrb9XWdHACo14KNpYK6Oj9dlMMqN9IMIBUIQxbEihILRMk1O4gjzm4byRi/EJT9fzzpzRBtuKrhibATBpXOkZ4x6Wm2Dmj8VXLsx1l+aYb58Gtz0sGdP8PJ/sczQYXILB2P5azqNth0+Bgow6ErRPAPz8hE9+rMeNAePo1Hs8=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=rcf+XJKV14BiGT+3kavZXPVke9tYhmzqBVpSO7M8GDm1IrAGQSHHx/rhOD1tSa7keJzmi0qCqQADiGn4Jrqfr2QsoU2AHd4NwUZqCB4F8xzbgcJ8xajYJHcRxIDLmSDOk3G1t+XTkNU4V6wmTvSSuoiF3taLavqxrQB1jw8nogk=;
X-YMail-OSG: JntuqPkVM1msQIXjUgKb3i2OwaXPVzncR52CaBBgbOkLWgp
	zIFRowmzr1hIvULMA7DYyTz4m_vOhGagABLJgsV8l_cP6dPupMNhtOYQnQR3
	GiH4woXW3hGWZ48VpajFh5k8QzfANjyDL.hiCJor4COudw93u3S2V1VWY1oZ
	zR41AD22rKuTwxmgWKxS8fvvzt28JlN66ZDEoTVoU8pvC37SuYE5UX9qqzod
	bCfE5wWgpe5PzX0LDQAgxcKy4rnQPI2cr1sHgppII6f77nNItBxaaQ7Uoxr3
	erOtZXVuT_62noB0lWs8SKjAzblWcNYOXozHianUQrMTkHOmz69V6pUBdL9K
	Q8lSEW94mhF.eHCp1CWjDa_TrdUCGljoZJ9m9Js90d49c.kAGJZzQS463JiE
	nRxNogLkvJa9Dn5HT6225_xypIdfhj4qYi2OSlCMU3QKReKuitsMUSQxUrqd
	mnAJ59sa7Y1VueTAmbU3B2LjRC6MAM6bxQUo4JV4deKYBCdVUVpM467H7ixg
	pfP9QrHQuFji42VdQ
Received: from [68.38.40.177] by web161504.mail.bf1.yahoo.com via HTTP;
	Fri, 27 Sep 2013 07:16:09 PDT
X-Rocket-MIMEInfo: 002.001,
	SGkgWW9jdG8sCgpJJ20gZG9pbmcgc29tZSBpdGVyYXRpdmUgYnVpbGRpbmcgb2YgdGhlIGtlcm5lbCAobW9kdWxlcyksIGFuZCBJIG5lZWQgdG8gdGVzdCBpdCBvbiBteSBzeXN0ZW0uCgpJIGRvIHRoZSBmb2xsb3dpbmc6CgpiaXRiYWtlIHZpcnR1YWwva2VybmVsIC1jIG1lbnVjb25maWcKYml0YmFrZSB2aXJ0dWFsL2tlcm5lbAoKSSBjb3B5IG92ZXIgdGhlIG1vZHVsZXN4eHh4LnRneiBmaWxlIGluIGRlcGxveS9pbWFnZXMgdG8gbXkgdGFyZ2V0ICYgZXh0cmFjdCwgYnV0IHRoZXJlIGlzIG5vIG1vZHVsZXMBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.160.587
Message-ID: <1380291369.3171.YahooMailNeo@web161504.mail.bf1.yahoo.com>
Date: Fri, 27 Sep 2013 07:16:09 -0700 (PDT)
From: Peter Tornel <petertornel@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: the yocto way to generate modules.dep when rebuilding the kernel?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Peter Tornel <petertornel@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Sep 2013 14:16:14 -0000
Content-Type: multipart/alternative;
	boundary="1835785293-627146454-1380291369=:3171"

--1835785293-627146454-1380291369=:3171
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Yocto,=0A=0AI'm doing some iterative building of the kernel (modules), a=
nd I need to test it on my system.=0A=0AI do the following:=0A=0Abitbake vi=
rtual/kernel -c menuconfig=0Abitbake virtual/kernel=0A=0AI copy over the mo=
dulesxxxx.tgz file in deploy/images to my target & extract, but there is no=
 modules.dep file included.=A0 =0A=0AHow do I generate modules.dep using yo=
cto / bitbake?=0A=0AThank you,=0A=0APeter

--1835785293-627146454-1380291369=:3171
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt">Hi Yocto,<br><br>I'm =
doing some iterative building of the kernel (modules), and I need to test i=
t on my system.<br><br>I do the following:<br><br>bitbake virtual/kernel -c=
 menuconfig<br>bitbake virtual/kernel<br><br>I copy over the modulesxxxx.tg=
z file in deploy/images to my target &amp; extract, but there is no modules=
.dep file included.&nbsp; <br><br>How do I generate modules.dep using yocto=
 / bitbake?<br><br>Thank you,<br><br>Peter<br><div><br></div></div></body><=
/html>

--1835785293-627146454-1380291369=:3171--
