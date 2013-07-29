Return-Path: <jamesnuss@nanometrics.ca>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9BFEE0044E
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 11:20:55 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id hr7so1740580wib.6
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 11:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nanometrics.ca; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=rUWyRa74EfkWx9V4VdKI7tJeWouvjnIQAjsH/aTbMLM=;
	b=OdhY/0tbSbvunXqnzoTWxUFQa8Qt1M8d2EB1erklz1Z/ENjS6pXICPbtJmihZoDAVu
	ek8Ne1C8EW1YcDblMwmqeIvqceST0p0L0+G7vb/W/hpymkCoAxbIMyIQb/dnfZIFuUiO
	QHOVOE6HEA0SMeq/rKiemVuLxZQfGTMlZz3HI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=rUWyRa74EfkWx9V4VdKI7tJeWouvjnIQAjsH/aTbMLM=;
	b=kk1RIa3XKF54FiU2fWZQ/PWh+gHe/hNru3Zv9EM2dZ3gjGLt5G0lfAONM4WjLGh8Ne
	XIhcnTaJRS4Gqi3lJVNMrj3brgQqdISc/qHpORanaIMPi4QaEgVyJfNDbqnLhD1YG6PG
	QGuTZpA9OUS8wKy8lJkaqkbsUQ+AV4QT16c260o0j8BGqs5diy1v0bp3wmZ+dgVZ1Iew
	B/2WZnj2F4jxo5FeU9OKPdbk9GXZE55UVJjEcnIGx2PjL8lzbrPk3Z8T7oc+QN2BlC/6
	f1AbL7rld9MzQpQNyZP6BiW132ouhwbhpSq8+NLV3dxqM/fs83Ma6mTCkaI9FMGvPEvQ
	5/5Q==
MIME-Version: 1.0
X-Received: by 10.180.90.240 with SMTP id bz16mr8018577wib.24.1375122054330;
	Mon, 29 Jul 2013 11:20:54 -0700 (PDT)
Received: by 10.216.162.70 with HTTP; Mon, 29 Jul 2013 11:20:54 -0700 (PDT)
Date: Mon, 29 Jul 2013 14:20:54 -0400
Message-ID: <CALgcdhiOgJ-sL4nDNEr+HbfoRDH7GHOhmXUhmS-UYO4tjfdf1Q@mail.gmail.com>
From: James Nuss <jamesnuss@nanometrics.ca>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnfRjj8OiOc4pnhH+Y4FHVGY52nZaY4u83uwBqFo89M7Bf6CqGdSgSoo6A5IcNIrh6PBJHK
Subject: eglibc and Oracle embedded JRE compatibility
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
X-List-Received-Date: Mon, 29 Jul 2013 18:20:58 -0000
Content-Type: multipart/alternative; boundary=f46d043c7b40924fe304e2aa8d62

--f46d043c7b40924fe304e2aa8d62
Content-Type: text/plain; charset=ISO-8859-1

Does anybody know if eglibc is supported as a libc implementation for
Oracle's embedded JRE?
Since Yocto only supports eglibc rather than GNU glibc [1], I'd like to
know if there are any issues running Oracle's embedded JRE on a Yocto build.

I can see that the meta-oracle-java [2] layer provides a recipe to install
the i586 and x64 JRE binaries so this is a good sign that it is at least
supported on those archs.
However I would like to know if it will work specifically on ARM arch.


[1]
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#usingpoky-components-bitbake
[2] git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java

Regards.
James

--f46d043c7b40924fe304e2aa8d62
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<font face=3D"courier new,monospace">Does anybody know if eglibc is support=
ed as a libc implementation for Oracle&#39;s embedded JRE?<br>Since Yocto o=
nly supports eglibc rather than GNU glibc [1], I&#39;d like to know if ther=
e are any issues running Oracle&#39;s embedded JRE on a Yocto build.<br>
<br>I can see that the meta-oracle-java [2] layer provides a recipe to inst=
all the i586 and x64 JRE binaries so this is a good sign that it is at leas=
t supported on those archs.<br>However I would like to know if it will work=
 specifically on ARM arch.<br>
<br><br>[1] <a href=3D"http://www.yoctoproject.org/docs/latest/mega-manual/=
mega-manual.html#usingpoky-components-bitbake">http://www.yoctoproject.org/=
docs/latest/mega-manual/mega-manual.html#usingpoky-components-bitbake</a><b=
r>
[2] <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java">=
git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java</a><br><br>Regards.<br>=
James<br></font>

--f46d043c7b40924fe304e2aa8d62--
