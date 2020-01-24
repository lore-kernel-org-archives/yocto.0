Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.13353.1579875434168213963
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 06:17:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hNYPc+OM;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: lefevre.da@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id t204so1308714qke.7
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jan 2020 06:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=OqwBeWLXpa8xkKfLjhGPuGYBOJx6z3WKSQ9L7lqq7Zc=;
        b=hNYPc+OM7bnIhiW/VRsDr7zVegC1bo4kBDPgOvn+ykwFJaKE3mkPuXst9vuWB7Xq6a
         WIqPXFpISKUccM+WojKIg0HFutCnusYLo1r6+OLt0f7Hi6ES2i0ukZ/dxlZ7KEzcmiSX
         LSwKLwFqTNnIHVkVchV3UiTgYKxJ7A80htfvvYfjynZss+JlKO1TRe2dnYfL8FGTr7Gp
         bW+C+H+/R2uegYHyF0vuLUFjS4/hyGMv22hE6pUCxCEZMU+SAgJ6g637zQqtLLel4Hhf
         PJZoiDcB28l6A/cGmRECS/sCIJNzM5XwUCqW/LtYfWJPVuqal21A7z/0Dc9cB9AaGkeg
         9aYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OqwBeWLXpa8xkKfLjhGPuGYBOJx6z3WKSQ9L7lqq7Zc=;
        b=TIAfWB2wETa0HB1u3PYM0qZNgxDpKF0lD+RI41Qv9ZSEFztVWKFUv825HbGNS3pyUG
         QlqvD9x1RadfQGsMQEz7vJ9wpwLt6VDLnhErLH71vmrPjyldhcU0UXrcuGUHfGfK42eh
         7+xi3IvLrhxoXUHoJW5BAbOb/f4wAvLDOpHkUPs8/YsAW0GUNxxjL7KLsPVpSByNpD5h
         62dkFnCGe7plVS3sqy5Nf3gkSPbwLLcPCospZkdhMDpdjBo4+vrc75tTTtt5z3poFUgn
         7G7OLAyhH5mz5rhITYQgghz6ado7lGdHIJJk/3xOy0BA4vZzCkBARGfDfhBEkAnHRXt7
         28uw==
X-Gm-Message-State: APjAAAUZDtCVVaSwjeSrnUd1r4BkV0kbQn5q/bzwU/tCJKz0p7BXLfZm
	ixU9ila33yz1Ojnv6gRNy3y078Tbg/vPKgvyIqWtFBk=
X-Google-Smtp-Source: APXvYqwEMXgcHzbJ6XCHqExpRN3u7cMSaQbEZq4rp3wUG9t1df8pbM9387nDPATnMeuyLle7tiZe2vEfNu70Kf+dTqo=
X-Received: by 2002:a37:354:: with SMTP id 81mr2755879qkd.276.1579875433183;
 Fri, 24 Jan 2020 06:17:13 -0800 (PST)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Fri, 24 Jan 2020 16:17:02 +0200
Message-ID: <CA+FhBv9eqW-gwrEUF+S83sbp-kLsukvP=V0mRvvcWG0K2tzHJQ@mail.gmail.com>
Subject: Connman default IP and MTU
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fbff69059ce369dd"

--000000000000fbff69059ce369dd
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using a yocto warrior image with connman and trying to configure the
default IPs in an image. I have a device with 2 ethernet NICs and a wifi
adapter.

I need to set 2 static IPs on the NICs, then user can connect to a known IP
and change the setting form a webUI

Is there a way to set default IPs other than writing this file:
/var/lib/connman/ethernet_*_cable/settings where * is the NIC MAC without 's

Also accessing interfaces by MAC instead of device name is quite cumbersome
because MACs change from one device to another... Any tricks on how this
could be eased?

Finally, is there a way to set the MTU with connman. I can't find anything
about that.

Thanks,
-Damien

--000000000000fbff69059ce369dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m using a yocto warrior image=
 with connman and trying to configure the default IPs in an image. I have a=
 device with 2 ethernet NICs and a wifi adapter.</div><div><br></div><div>I=
 need to set 2 static IPs on the NICs, then user can connect to a known IP =
and change the setting form a webUI</div><div><br></div><div>Is there a way=
 to set default IPs other than writing this file:</div><div>/var/lib/connma=
n/ethernet_*_cable/settings where * is the NIC MAC without &#39;s<br></div>=
<div><br></div><div>Also accessing interfaces by MAC instead of device name=
 is quite cumbersome because MACs change from one device to another... Any =
tricks on how this could be eased?</div><div><br></div><div>Finally, is the=
re a way to set the MTU with connman. I can&#39;t find anything about that.=
=C2=A0</div><div><br></div><div>Thanks,</div><div>-Damien</div><div><br></d=
iv><div><br></div></div>

--000000000000fbff69059ce369dd--
