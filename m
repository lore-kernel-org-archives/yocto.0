Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AD96E00C97; Wed, 29 Nov 2017 12:50:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pauldotknopf[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E12F6E00C97
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 12:50:56 -0800 (PST)
Received: by mail-lf0-f51.google.com with SMTP id 94so5421936lfy.10
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 12:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Utc3BBKZpMMEGNOherJyd08BjdQuOHub/qtItAVQZI8=;
	b=oULos/zpNaaMVtvFq6XisYVUM9qVSGhLdVknVlTnIWHC2JqZtIlHrGWKNBxPa53JLl
	R6G2ETPLd2zrFX9Bhra8t7SEWFMi7233kzi5KcaTOP9MMqXskijhHIDsmCEZZRTm8ukh
	Dy+0+L4ReQHlvZUDyEaNNUpukD5mfMaPmASGx9S2cLH1MNTMDl0UYaaPkQ2GD+qSy6HE
	SoyWP22SR5k0DJQ5yZKhhpYl4PqypUqoRS9trrKAxoO24qrWpMUWN18IvawPfh/EtDQ4
	u+MhjywsM9uwtVFP4P26Vr6IlPwEWPFOupaVl9EyKaAuXdlFxS3gIGCfZESsHWQkwfG6
	yHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Utc3BBKZpMMEGNOherJyd08BjdQuOHub/qtItAVQZI8=;
	b=kSFE029WODdckIb/SDed3IfFu6yzbwyfk+mf2C40urPZKG/1+d9+mVXZYJdftaTb9Y
	JsHS82YBPv1AHhjOkBEA8axkWPtO/GYl0QU7Y9fFFSw+DqxYEjPPOPigWGR2REdtyLOc
	T0UUAqmW7DE8vIUwvyyBJGOuKUNSK6pdTJ1B5djpc2hi8JCrXCSopK802u6zdZXdqZiQ
	xBKku0Rtdr9nBzu1sM/kVim1n4wG35dDKitPxKBO+9BiakP/Cwe+CmvE8wOL5nxf1Kds
	k3k4igdg1BJ2U/qQ0is7/wWlW1idQDyWLJW6sC5oAnqdD1uhM/HebvUdfNckOQql5Q5I
	toLA==
X-Gm-Message-State: AJaThX7BhWKeHoy8mg77YGeKiFAN7HTaGd6J+EOIIOXuzGQ60MUGRS8D
	DTl12hHZYVr42V4FvvGv76QqZQeqCoUoyP6V0HgTuw==
X-Google-Smtp-Source: AGs4zMZfWaC5klkJOexsOH3PdFVwXNy7JykypisJ1rlKbJEsJC1yhdItdirIXjNXUUMVFYQ4DtdOUWQNQnjRSz1nhyc=
X-Received: by 10.46.23.144 with SMTP id 16mr2205436ljx.162.1511988655468;
	Wed, 29 Nov 2017 12:50:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.76 with HTTP; Wed, 29 Nov 2017 12:50:55 -0800 (PST)
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Wed, 29 Nov 2017 15:50:55 -0500
Message-ID: <CAKmWj-16JrBxajKEPmVvg8tFJngsVV1MMNHBkJnHB5HfHSj29A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: buildhistory.bbclass "version-going-backwards" for AUTOINC
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
X-List-Received-Date: Wed, 29 Nov 2017 20:50:57 -0000
Content-Type: multipart/alternative; boundary="94eb2c074a20b6b4cb055f254a82"

--94eb2c074a20b6b4cb055f254a82
Content-Type: text/plain; charset="UTF-8"

I am getting these errors during builds.

clear-app-gitAUTOINC+4d250a7fe4-r0 do_packagedata: QA Issue: Package
version for package clear-app-locale-es went backwards which would break
pack
age feeds from (0:git0+66636e50ea-r0 to 0:git0+4d250a7fe4-r0)
[version-going-backwards]

I think buildhistory.bbclass should ignore recipes that are using AUTOINC.

Or, a way to disable the version-going-backwards check.

--94eb2c074a20b6b4cb055f254a82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am getting these errors during builds.<div><br></div><di=
v><div>clear-app-gitAUTOINC+4d250a7fe4-r0 do_packagedata: QA Issue: Package=
 version for package clear-app-locale-es went backwards which would break p=
ack</div><div>age feeds from (0:git0+66636e50ea-r0 to 0:git0+4d250a7fe4-r0)=
 [version-going-backwards]</div></div><div><br></div><div>I think buildhist=
ory.bbclass should ignore recipes that are using AUTOINC.</div><div><br></d=
iv><div>Or, a way to disable the version-going-backwards check.</div></div>

--94eb2c074a20b6b4cb055f254a82--
