Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66F03E00CEA; Fri, 28 Dec 2018 09:19:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com
	[209.85.221.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED225E00CCC
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 09:19:18 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id b18so4673426vke.2
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 09:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=T1S4KO+77FstXU46CCmLlYxeifZKlG/QqgDDNclmFo0=;
	b=FGoQMNbCisDUgndlQGTOq/ch2PtEQihuOKHMLQdyyWtsK6P70B1CCEZNTn/5VyeerA
	EHIjy89CtGPLk3fcnX2Wj8yoCEWvZhsyPvN3NlHaZKwVKCIVJXTgZmbRbJVL3MTkQYd4
	fXRELN0GsaCKwt4lEligM+P3qCOfe0qwzGpFSRvc13AuWWN9/KCcDytp28fm4KI9tcE7
	qVi66uGZz22utMx57JIBU1sM+2YCQ01euFd9YHJC1n081dKiQYhfeh6LxE78KspEb5iR
	NKlmCwBP/5d0vlColt2rfvw7CeJG3zRQD4OciweIGxmGwlFRfwItfT7Ix3T52u6E0/9B
	aUeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=T1S4KO+77FstXU46CCmLlYxeifZKlG/QqgDDNclmFo0=;
	b=FyztzQoqZIIWzB2r47lFGobpJr8dpsWvFdKi8OD1pnBhXwrKtR2yJNXq0MphXyZ7W9
	EfazV9vqTnIZnZMyVHyArNXuO9EtZHmODRnq/Eoe66zoirim2nxu+ecZJ+LrLtQJGhcI
	bXsIXvFMlabur86OuMg6b1/SqBQs8EoY+UoaYvqbgL6SRl0APd60CdnEwtDZKJ/iNkjS
	UvJhWzOYaOx069+jW+5vPC4d8wx13CtBO3GIXPt2mX0V6/4vCN+mhyYFkeL8OczL4Xzg
	eRMhxcMT1rCbnAfIEMAbZ2wCyaBfiMIE3aTrfC9SKRSiO73VHEmfcLSdmscfYYFbu+/p
	vDLQ==
X-Gm-Message-State: AJcUukdPPgLhtRh+S1Vklcl5sFx9P5IEDU/jKLU+9DRe4WzrWQlKkye0
	4Jfq+sOTmIiwPIplcDufW+qPi61aXXYiPQOZtSXlvnTU
X-Google-Smtp-Source: ALg8bN4hmsVhKCvnbpRf1U4yHoxW/Tn3mOPME8QfI8kwvUhjWIz/o9aqCYkcfaxk2PvJWS5MMDiPS96nJ0VzmlQDJ0c=
X-Received: by 2002:a1f:bfd6:: with SMTP id p205mr10786254vkf.70.1546017557617;
	Fri, 28 Dec 2018 09:19:17 -0800 (PST)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Fri, 28 Dec 2018 18:19:06 +0100
Message-ID: <CAKRytNwgRJO_7mEpYbNoxX73Pr70RThYd0TEjEmUg_QyVHcRTQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to skip a receipe from security_flags by its name?
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
X-List-Received-Date: Fri, 28 Dec 2018 17:19:19 -0000
Content-Type: multipart/alternative; boundary="000000000000569ff4057e18439e"

--000000000000569ff4057e18439e
Content-Type: text/plain; charset="UTF-8"

Hi!

Let say that I have a receipe called "third-party-receipe" and I want to
use security flags for everything except for "third-party-receipe".

How can I do this? Is there a general blacklist to skip all the stuff
included in security_flags.inc for a specific receipe? I don't want to
remove only a flag, because I cannot predict what it's interfering, but I
want to skip all flags to be sure that It will work.

Do you have any suggestions?

Thank you.

--000000000000569ff4057e18439e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi!<div><br></div><div>Let say that I have a receipe calle=
d &quot;third-party-receipe&quot; and I want to use security flags for ever=
ything except for &quot;third-party-receipe&quot;.</div><div><br></div><div=
>How can I do this? Is there a general blacklist to skip all the stuff incl=
uded in security_flags.inc for a specific receipe? I don&#39;t want to remo=
ve only a flag, because I cannot predict what it&#39;s interfering, but I w=
ant to skip all flags to be sure that It will work.=C2=A0</div><div><br></d=
iv><div>Do you have any suggestions?</div><div><br></div><div>Thank you.</d=
iv></div>

--000000000000569ff4057e18439e--
