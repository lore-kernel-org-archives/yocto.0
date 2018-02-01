Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D47FE00DE2; Thu,  1 Feb 2018 09:50:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.141 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from valiant.selinc.com (valiant.selinc.com [74.117.214.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D28BBE00B66
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 09:50:12 -0800 (PST)
Received: from pps.filterd (valiant.selinc.com [127.0.0.1])
	by valiant.selinc.com (8.16.0.22/8.16.0.22) with SMTP id w11HoClo011398
	for <yocto@yoctoproject.org>; Thu, 1 Feb 2018 09:50:12 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com;
	h=to : mime-version :
	subject : message-id : from : date : content-type; s=SELinc2017;
	bh=avSms6F/xGAhKJ8dN21kVoSGZj5M1M0Ye6QCMQ7K5wc=;
	b=1sfLATrce0sjBUmlvWC4jNF8DqQVoBhkoEalbxpHq6g4mHXQ+MNONB7KCHJ7JACLnmp9
	Nn75x7ak4cPg71EgWURLLgHCTw9fHez8Noj1+t+r3SqRMvG3GEEyryFWCiCeQtF/7GOb
	Yr+ip2hGVs1W7QGf2TjUgahvduBfDwcGYhsqbKFF2iJkJZtLdbzyk0//miFYIy6uw+HU
	sGjOL/SnVuKexyfKalr+hOHeY14LjPahMBgvR6Eeq3HXleLXH6sa6PNfV1T0XpXmbgaU
	XvN4tiSeVIJWsMluxO9SjGpHa5qReDOxny4X6krc+dm/wZZhv4CscnJF4mmy41ISoltr
	1Q== 
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by valiant.selinc.com with ESMTP id 2fugynjvvq-1
	for <yocto@yoctoproject.org>; Thu, 01 Feb 2018 09:50:12 -0800
To: Yocto-mailing-list <yocto@yoctoproject.org>
MIME-Version: 1.0
X-KeepSent: 45322F76:24DE1A33-88258227:00613D54;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP5 Octobe4, 2013
Message-ID: <OF45322F76.24DE1A33-ON88258227.00613D54-88258227.0061FAA9@selinc.com>
From: Aaron_Wright@selinc.com
Date: Thu, 1 Feb 2018 09:50:12 -0800
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 02/01/2018 09:50:12 AM,
	Serialize complete at 02/01/2018 09:50:12 AM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8792
	signatures=668660
Subject: [multilib] 64-bit and 32-bit package install the same executable
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
X-List-Received-Date: Thu, 01 Feb 2018 17:50:13 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0061FAA688258227_="

--=_alternative 0061FAA688258227_=
Content-Type: text/plain; charset="US-ASCII"

I've noticed that for my custom image both the 32-bit and the 64-bit 
versions of the same package are getting installed. For example, it has 
both shadow-base and lib32-shadow-base installed. When I check the 
/bin/su.shadow executable I find it is 32-bit.

Is it expected that the lib32 version of the package will "win" when both 
packages install the same /bin/su.shadow file?

Is this something that is always true, so that I can always assume, when 
two packages install the same executable, that it will end up being 
32-bit?

Why does the packaging system, PACKAGE_CLASSES = "package_ipk", not give 
an error when both packages install the same file?

--=_alternative 0061FAA688258227_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I've noticed that for my custom image both
the 32-bit and the 64-bit versions of the same package are getting installed.
For example, it has both shadow-base and lib32-shadow-base installed. When
I check the /bin/su.shadow executable I find it is 32-bit.</font>
<br>
<br><font size=2 face="sans-serif">Is it expected that the lib32 version
of the package will &quot;win&quot; when both packages install the same
/bin/su.shadow file?</font>
<br>
<br><font size=2 face="sans-serif">Is this something that is always true,
so that I can always assume, when two packages install the same executable,
that it will end up being 32-bit?</font>
<br>
<br><font size=2 face="sans-serif">Why does the packaging system, PACKAGE_CLASSES
= &quot;package_ipk&quot;, not give an error when both packages install
the same file?</font>
<br>

--=_alternative 0061FAA688258227_=--
