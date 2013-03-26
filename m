Return-Path: <peachj@lexmark.com>
Received: from exprod8og102.obsmtp.com (exprod8og102.obsmtp.com [64.18.3.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9475E013AC
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 05:53:55 -0700 (PDT)
Received: from mail-yh0-f72.google.com ([209.85.213.72]) (using TLSv1) by
	exprod8ob102.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUVGaYwlaL5anowKs93Bpl7sHXrq0I7fE@postini.com;
	Tue, 26 Mar 2013 05:53:55 PDT
Received: by mail-yh0-f72.google.com with SMTP id i57so6253509yha.11
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 05:53:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=kRzPILnQSCf2giZJnzJdYMZT9552MStALHrUS5Y5XmU=;
	b=blCsxhNu/9zGMtndfkZK9/iVmSfplIl+eDFoDLpiQrenY3h0y9U9/h0QjvkTcOyKZf
	Ti84WIT4GjJGlJkUYyp+H8+Bp/3xeEveiP2MsQF/BGxDVOJOuB8rpXdw72gbzzYnAtdc
	/nJbJdLdVKaTEvWUBhWxAlcpyleu8p2eNLB+/Dbka+KurdvCAU1fEPpGvb33dLwjkQ7q
	mDvCZ9Yn0CZNnYm4B68TqjJtE581ixgiEK3tnm9vWytTkkU9zN7WSa+7xIalTYAREI3q
	KYdjKlPmEjTDY5tWBQA1j/+An77SMP5cq/kBShqi8iIrkUxOaoWCbXBIPJCQr3lhIqLL
	34IQ==
X-Received: by 10.224.198.67 with SMTP id en3mr4367167qab.23.1364302434565;
	Tue, 26 Mar 2013 05:53:54 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.224.198.67 with SMTP id en3mr4367160qab.23.1364302434390;
	Tue, 26 Mar 2013 05:53:54 -0700 (PDT)
Received: by 10.49.47.112 with HTTP; Tue, 26 Mar 2013 05:53:54 -0700 (PDT)
Date: Tue, 26 Mar 2013 08:53:54 -0400
Message-ID: <CA+QkY1DZCJnYH-3wUc_z+SXOBtBS7NQU3GV+kCaTTeK8Co+8eA@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkKZZNc5OWTsbI430T20lHgYhdnJgHPi3l/FmA5y0NpGjc7xUbmzRBx0UxXmEebaNWs0FER95hCsLbS5ho+g9QeQUWKvqwhJxfQkYkpmnH8OLKT4W0elYIhKu7OVLilmgte1UWndGRrt7SIiNlt/L+UrlmbZw==
Subject: Building "restricted" source code
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
X-List-Received-Date: Tue, 26 Mar 2013 12:53:56 -0000
Content-Type: multipart/alternative; boundary=20cf300fb107f7e21b04d8d36909

--20cf300fb107f7e21b04d8d36909
Content-Type: text/plain; charset=ISO-8859-1

As part of my company's firmware builds, we have to build some code that
only a handful of developers are allowed to view.  We call this restricted
source code.  Getting our official "system" builds to build this code isn't
a problem.  What is a problem is a regular developer's build of this code.

Imagine this scenario: The restricted source depends upon eglibc.  Our
low-level team, who doesn't have access to the restricted source, updates
the recipe for eglibc.  The hash for the restricted package is permuted,
and so they can't get an sstate hit and are required to rebuild the source.
 But, since they can't check out the source, they can't build it.  This
would cause a build failure.

Is anyone dealing with this scenario while using Yocto currently?  If so,
how?  I know it may be unlikely that many people are hitting this since
Yocto is primarily used to build open-source code, but I thought I'd take a
shot in the dark and hope for the best.  :-)

--20cf300fb107f7e21b04d8d36909
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As part of my company&#39;s firmware builds, we have to bu=
ild some code that only a handful of developers are allowed to view. =A0We =
call this restricted source code. =A0Getting our official &quot;system&quot=
; builds to build this code isn&#39;t a problem. =A0What is a problem is a =
regular developer&#39;s build of this code. =A0<div>
<br></div><div>Imagine this scenario: The restricted source depends upon eg=
libc. =A0Our low-level team, who doesn&#39;t have access to the restricted =
source, updates the recipe for eglibc. =A0The hash for the restricted packa=
ge is permuted, and so they can&#39;t get an sstate hit and are required to=
 rebuild the source. =A0But, since they can&#39;t check out the source, the=
y can&#39;t build it. =A0This would cause a build failure. =A0</div>
<div><br></div><div>Is anyone dealing with this scenario while using Yocto =
currently? =A0If so, how? =A0I know it may be unlikely that many people are=
 hitting this since Yocto is primarily used to build open-source code, but =
I thought I&#39;d take a shot in the dark and hope for the best. =A0:-)</di=
v>
</div>

--20cf300fb107f7e21b04d8d36909--
