Return-Path: <mbroadst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B35DEE00AF2; Sat,  9 Apr 2016 05:43:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mbroadst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83B80E00AD8
	for <yocto@yoctoproject.org>; Sat,  9 Apr 2016 05:43:10 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id y204so163563507oie.3
	for <yocto@yoctoproject.org>; Sat, 09 Apr 2016 05:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=fMEJEmmzVg3FJKQogfD16eeW+slcqqNLsgmXUFB8ndU=;
	b=cOL/d7m2EjowOw5nKqn/1ick+GqWquZcgsc4l7Mz3QpOKFIoSbK2OdWW6WBabJXT0S
	61mlZQ6aNArklr5wulJJTtV/MKZpnOIbf7UlB4LzD2RdGcUVAOz74uj/vlVL/uye11Gx
	iVka5KRF7aV3z10EBqonSdII1A+CTRQIZ3OslkXuDd67g/0TfZGGqVM3sAfMUvlK7loJ
	HyGbX7v1KoGszYpCd/PC8e8YY8B/lvJfGkuVOgrke57LYtryaX2YkOGpp3NYWKDuKW+g
	OFCsRAco3ymVbA1M5+j6RmAWLI3hp/1DmHuoMF4qXDXtc3UrGWs4AAhX6tU7saJB7M1+
	Hx6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=fMEJEmmzVg3FJKQogfD16eeW+slcqqNLsgmXUFB8ndU=;
	b=gV5bYi3tsSXrwxZonj/SgNDJNVF6OhK9ukSkNxp0tsDyfjy9Ef7j8S6JRe+/tL5l+n
	CkR3jyjCjWDNgsBpJWgmdz6NqYlF+Ki6FhtHJ4PhclBdRaZ5+I+mKSyzmKI13nwKa5pt
	Lti+fAZlVsVVpJ2fkPO9t86FLoO7VxJkt1t0oJ1BxxyrJLsD1J0RL7znZWvFoVI+jiWP
	J1un9xAn6kFAtg16gtYCKJXP5r+hL0dZQjNLBj431tx7j1SHN7dpWcA3TQXA/9Crxp6T
	gCwXg/Gfdcmji5yCcXNdwXa3JLpZb4zXx33opiSpdl9LrjluDyHQbhiRPh/6TDj9oWfA
	0eVQ==
X-Gm-Message-State: AD7BkJJQhe6w3fSHGZtvAkBwnypoSGwP79x5i+jV6RZjpKzXJ2VjVV7AbB3Bb+OuYWfcTNnX0zVFxJmuN5867A==
MIME-Version: 1.0
X-Received: by 10.202.222.5 with SMTP id v5mr6238210oig.82.1460205789732; Sat,
	09 Apr 2016 05:43:09 -0700 (PDT)
Received: by 10.202.69.215 with HTTP; Sat, 9 Apr 2016 05:43:09 -0700 (PDT)
Date: Sat, 9 Apr 2016 08:43:09 -0400
Message-ID: <CAMsD-yCziFjg1eeZ9q8r0ueFyPC2D0xyeeAHPCeKRHMGjahLBA@mail.gmail.com>
From: Matt Broadstone <mbroadst@gmail.com>
To: yocto@yoctoproject.org
Subject: cmake recipe find_file failure
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
X-List-Received-Date: Sat, 09 Apr 2016 12:43:13 -0000
Content-Type: multipart/alternative; boundary=001a113ce7a8656bcd05300ca725

--001a113ce7a8656bcd05300ca725
Content-Type: text/plain; charset=UTF-8

Hi,
I'm trying to build a recipe for apache qpid, which is a cmake-based
project. Configuration is currently failing due to "find_file" not being
able to find a file in the source directory for the build:

find_file(QPID_VERSION_FILE NAMES QPID_VERSION.txt PATHS
${PROJECT_SOURCE_DIR}/.. ${PROJECT_SOURCE_DIR} NO_DEFAULT_PATH)
mark_as_advanced(QPID_VERSION_FILE)
if(NOT QPID_VERSION_FILE)
  message(FATAL_ERROR "Cannot find QPID_VERSION.txt")
endif(NOT QPID_VERSION_FILE)

What's truly puzzling is that if I try the following:

execute_process(COMMAND ls ${PROJECT_SOURCE_DIR} OUTPUT_VARIABLE
TEST_OUTPUT)
message("LS RESULT: ${TEST_OUTPUT}")

the paths are indeed correct; the result of the ls contains the
QPID_VERSION.txt file. This seems to indicate to me that something else is
failing internally, but am not sure where I should be looking exactly.

Has anyone experienced this before? Are there any general tips for
debugging these types of failures in cmake projects in yocto?

Regards,
Matt

--001a113ce7a8656bcd05300ca725
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I&#39;m trying to build a recipe for apache qpid, =
which is a cmake-based project. Configuration is currently failing due to &=
quot;find_file&quot; not being able to find a file in the source directory =
for the build:</div><div><br></div><div><div>find_file(QPID_VERSION_FILE NA=
MES QPID_VERSION.txt PATHS ${PROJECT_SOURCE_DIR}/.. ${PROJECT_SOURCE_DIR} N=
O_DEFAULT_PATH)</div><div>mark_as_advanced(QPID_VERSION_FILE)</div><div>if(=
NOT QPID_VERSION_FILE)</div><div>=C2=A0 message(FATAL_ERROR &quot;Cannot fi=
nd QPID_VERSION.txt&quot;)</div><div>endif(NOT QPID_VERSION_FILE)</div></di=
v><div><br></div><div>What&#39;s truly puzzling is that if I try the follow=
ing:</div><div><br></div><div><div>execute_process(COMMAND ls ${PROJECT_SOU=
RCE_DIR} OUTPUT_VARIABLE TEST_OUTPUT)</div><div>message(&quot;LS RESULT: ${=
TEST_OUTPUT}&quot;)</div></div><div><br></div><div>the paths are indeed cor=
rect; the result of the ls contains the QPID_VERSION.txt file. This seems t=
o indicate to me that something else is failing internally, but am not sure=
 where I should be looking exactly.</div><div><br></div><div>Has anyone exp=
erienced this before? Are there any general tips for debugging these types =
of failures in cmake projects in yocto?</div><div><br></div><div>Regards,</=
div><div>Matt</div></div>

--001a113ce7a8656bcd05300ca725--
