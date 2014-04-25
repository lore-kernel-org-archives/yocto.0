Return-Path: <peachj@lexmark.com>
Received: from exprod8og107.obsmtp.com (exprod8og107.obsmtp.com [64.18.3.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44306E00BDA
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 05:46:25 -0700 (PDT)
Received: from mail-yk0-f172.google.com ([209.85.160.172]) (using TLSv1) by
	exprod8ob107.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU1pZIbO8LWXF2VeR9TVTCuqill0qBMGb@postini.com;
	Fri, 25 Apr 2014 05:46:29 PDT
Received: by mail-yk0-f172.google.com with SMTP id q9so2487000ykb.17
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 05:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=WMzyppqC5WbhJmggHJlmcMW1QkUkukKhQJ9BTK09gRU=;
	b=bEIdQwPJQEf24wdB6oYEx00VPihCqf+d+zqQOqUL7kx8qnvlYCYgHOUdNRG/mQMqX0
	zbiDJfPT2kAh96G8bkZypKlTf2bFPNGHho00nCvFobwzU/D/HWsM/hICEN/vtYFABhu6
	ntohMC9i6NLpbWrEn0GwTeqWQhWZ1eL1go9T1rRd4JD+MA/HiM821gfXwv5btPyGVPoQ
	7OhxZX5c3PKRbogvUpEv9+KQIISn01o+jT9DOZxV/gqoioVKz/XN6gcXYaKRSuvEdybz
	KeLpubuuHtzFnpzLuiCbc/DZEzX0nDxoWDNMKyCcPgpmz/J0XQ3wZp4QhNzRfcJJBhkH
	FwkA==
X-Gm-Message-State: ALoCoQnk8YSpfl3hZpMiNRTC58vTkX4AYXQjwoJCq4U5Fn/iGerv8eCsn/bbE8EgOhgBrqfrOEFrJ+FO9VBz/QC//8Hwyz3kJ/yNlIRB/6IkddNMg0tigiXum7Fkzqw9TBAFRAiVjydg
X-Received: by 10.236.138.136 with SMTP id a8mr2662114yhj.113.1398429985039;
	Fri, 25 Apr 2014 05:46:25 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.236.138.136 with SMTP id a8mr2662095yhj.113.1398429984880;
	Fri, 25 Apr 2014 05:46:24 -0700 (PDT)
Received: by 10.170.78.195 with HTTP; Fri, 25 Apr 2014 05:46:24 -0700 (PDT)
Date: Fri, 25 Apr 2014 08:46:24 -0400
Message-ID: <CA+QkY1Bo6-YPZCEkYKVaxebK-qxVbjdpyJf0hKjDwcY=-9SArg@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>, lxlib <lxlib@lpdev.prtdev.lexmark.com>
Subject: New recipe writing documentation
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
X-List-Received-Date: Fri, 25 Apr 2014 12:46:29 -0000
Content-Type: multipart/alternative; boundary=20cf303dd8fa7e2c4004f7dd5a2d

--20cf303dd8fa7e2c4004f7dd5a2d
Content-Type: text/plain; charset=ISO-8859-1

If you've ever struggled with writing a recipe, the Yocto Project has some
new documentation that extensively covers the
topic<http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe>.
Do note that this is from the Yocto 1.6 documentation which was just
formally released yesterday, so there is a slim chance they'll mention
something that isn't applicable to our current 1.4 (headed to 1.5) release,
but I think overall it could be handy to some folks.

--20cf303dd8fa7e2c4004f7dd5a2d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you&#39;ve ever struggled with writing a recipe, <a hre=
f=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#ne=
w-recipe-writing-a-new-recipe">the Yocto Project has some new documentation=
 that extensively covers the topic</a>. Do note that this is from the Yocto=
 1.6 documentation which was just formally released yesterday, so there is =
a slim chance they&#39;ll mention something that isn&#39;t applicable to ou=
r current 1.4 (headed to 1.5) release, but I think overall it could be hand=
y to some folks.</div>

--20cf303dd8fa7e2c4004f7dd5a2d--
