Return-Path: <siva.balasubramanian@timesys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D28FE00D53; Wed,  4 Oct 2017 03:47:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A18BCE00D48
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 03:47:35 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id o3so18284272qte.6
	for <yocto@yoctoproject.org>; Wed, 04 Oct 2017 03:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=timesys-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=13A7F8I6t9RtWSyuErQsPhkJGU7NAFDb3nkY4KFSWIQ=;
	b=dc2J3DIZrPr6iTwx/+UC8akDex90rbMsoT36OIxTG5h1CHYpTggNTikemvQSLt/tZu
	k/ZsbyvYRtPQmVVEpdVQuPLV8bC+Ayv096QJB7M93ROHm7ohvWTGoYE3qYdNS+WysuQS
	qfi1ARGpB6i5qdeq3FMsQRdY6ysISLokU2yGGpl6dMfbar+sv959f5Eghvo6drARM3wb
	H7dbMxjrYRSXvjaBACMRnQvvHkL848hsZ/m+ZsZFYTPrJC+fpi5DKjGo53gP0r6y4RV6
	1DS8iCvp3NE8qohtBJG12g7nxpuA6pcllilhvb+mVSOEbSsdpNbJmyxqzSCspyfJ8b9m
	SnWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=13A7F8I6t9RtWSyuErQsPhkJGU7NAFDb3nkY4KFSWIQ=;
	b=TLXB0tQwQBue+gSzW1mk48MgVqqHCEg/ulTw67YOQKjqsMhwpsd0eGR+7KTTYi5hp3
	FeUtkCUPwa3Wo0OszHyCGF/zS45U+VstO35CZTa8NRjhuZXMY9NrUbvFxzVyfiM7rZ/S
	yL/wxxvpNHYA+imPHbzhfA421uuy5YfUm58uQy3u6eFicpS3oXrYrfojdRVVjyNeJc12
	MSviY/zqJldhL14X/TCgkymSCU9D0lgdd3JAgtYkb9wiJxXdEP2Dzs5+L2a8B/3F9fg+
	X5rmZIoRt4BuGUmh1azS7ksZ4+MuLFj5W/SikgGSfBZ6AwAky9Ett5GB6NcWgmSKj33e
	d4jw==
X-Gm-Message-State: AMCzsaW6+NOEQlOnztPcNtxB2/ryGjbWuL3pm38C77jg5RHWPxspKloO
	INIP6uXweIALc3Bn2NvlPzWo6lNIs12kvho7saYmjmew
X-Google-Smtp-Source: AOwi7QDowY7iQshw4YuY3ysCPdfDt6/FHAffhx/vrqVi1qWXdylfbJ7BNYZWzm0D9RgDxQmvcL92DYOTv3cgQ0MDxpE=
X-Received: by 10.200.44.81 with SMTP id e17mr12452961qta.332.1507114054396;
	Wed, 04 Oct 2017 03:47:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.107.202 with HTTP; Wed, 4 Oct 2017 03:47:13 -0700 (PDT)
From: Siva Balasubramanian <siva.balasubramanian@timesys.com>
Date: Wed, 4 Oct 2017 16:17:13 +0530
Message-ID: <CAFUEAPC5+B6JQZ6OZZd5sOFi0UPsySDs4ha-esSrDDw7xi0Rqw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 10 Oct 2017 11:53:50 -0700
Subject: Openscap build fails while do_package_qa
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
X-List-Received-Date: Wed, 04 Oct 2017 10:47:36 -0000
Content-Type: multipart/alternative; boundary="001a11404796d93e19055ab6559f"

--001a11404796d93e19055ab6559f
Content-Type: text/plain; charset="UTF-8"

I tried building openscap from meta-security. It fails while do_package_qa.

ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue:
/usr/lib/openscap/ptest/tests/API/XCCDF/unittests/test_remediate_python_subs.sh
contained in package openscap-ptest requires /bin/bash, but no providers
found in RDEPENDS_openscap-ptest? [file-rdeps]
ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue:
/usr/lib/openscap/ptest/tests/xmldiff.pl contained in package
openscap-ptest requires /usr/bin/perl, but no providers found in
RDEPENDS_openscap-ptest? [file-rdeps]
ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue:
/usr/lib/openscap/ptest/tests/nist/test_worker.py contained in package
openscap-ptest requires /usr/bin/python2, but no providers found in
RDEPENDS_openscap-ptest? [file-rdeps]
ERROR: openscap-1.2.14-r0 do_package_qa: QA run found fatal errors. Please
consider fixing them.
ERROR: openscap-1.2.14-r0 do_package_qa: Function failed: do_package_qa


-- 
Siva Balasubramanian

--001a11404796d93e19055ab6559f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I tried building openscap from meta-security. It fails whi=
le do_package_qa.<div><br></div><div><div>ERROR: openscap-1.2.14-r0 do_pack=
age_qa: QA Issue: /usr/lib/openscap/ptest/tests/API/XCCDF/unittests/test_re=
mediate_python_subs.sh contained in package openscap-ptest requires /bin/ba=
sh, but no providers found in RDEPENDS_openscap-ptest? [file-rdeps]</div><d=
iv>ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue: /usr/lib/openscap/pte=
st/tests/<a href=3D"http://xmldiff.pl">xmldiff.pl</a> contained in package =
openscap-ptest requires /usr/bin/perl, but no providers found in RDEPENDS_o=
penscap-ptest? [file-rdeps]</div><div>ERROR: openscap-1.2.14-r0 do_package_=
qa: QA Issue: /usr/lib/openscap/ptest/tests/nist/test_worker.py contained i=
n package openscap-ptest requires /usr/bin/python2, but no providers found =
in RDEPENDS_openscap-ptest? [file-rdeps]</div><div>ERROR: openscap-1.2.14-r=
0 do_package_qa: QA run found fatal errors. Please consider fixing them.</d=
iv><div>ERROR: openscap-1.2.14-r0 do_package_qa: Function failed: do_packag=
e_qa</div><div><br></div><div><br></div>-- <br><div class=3D"gmail_signatur=
e"><div dir=3D"ltr">Siva Balasubramanian</div></div>
</div></div>

--001a11404796d93e19055ab6559f--
