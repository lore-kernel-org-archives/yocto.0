Return-Path: <felix.lelchuk@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E45D7E00C1E; Tue,  9 Apr 2019 15:42:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (felix.lelchuk[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Apr 2019 15:42:11 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAC58E00AD5
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 15:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1554849730;
	bh=uYrrYQoPteVWMnhN0HqmP9nMPnirzhHRum9e32Rnvyw=;
	h=X-UI-Sender-Class:To:From:Subject:Date;
	b=QNHeXCyMkqsoC/LTfAJAquIfpkNHUDXCBrYpdaSz8bR6k6fvRJxyS8BJXetaGCwBM
	V/YR73Y1Oe+4mPqvS4l/HxnhSPLXR6uDjbcDlf4setneGjV8fsFFhVuc+i7aWfCQ14
	Cy2spkRlx+51whQlR+ik6RmH8h11jnXDYuzHtBk8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.40] ([87.123.67.175]) by mail.gmx.com (mrgmx003
	[212.227.17.190]) with ESMTPSA (Nemesis) id 0LiTF6-1gbcD93t7M-00chvT
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 00:37:07 +0200
To: yocto@yoctoproject.org
From: Felix Lelchuk <felix.lelchuk@gmx.de>
Message-ID: <c0bd1301-ae63-fd92-4f67-18250fe31502@gmx.de>
Date: Wed, 10 Apr 2019 00:37:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:FsGR0dRWZzaZDrT/9xDWo7TQRld8KaZJZGQoAXm6Z3PP8K4/BDK
	bVNNzZi/G1OzgWIHnZNH660N2kmnNBBXdOpLzaDfHDIdgt5UB1p/+IKYCO59vltz6z3KCy5
	3a5jdqwcXFfGUC56pNHG/phZVCRXzgJMU7ebu4WoeYzrr0dyKVZWH5wrIKcM8es+zSNlKq/
	J8Aa6dJId4lg5LXP64s1g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:xFTl+VglSm4=:M553QLhRiJmBZT5BNbRCYQ
	AMq/nUR9bIWasK6m1H0c6p6Nmkl1ZO8SkZxe3jMNiVux+AFQznhIoKO9x5x4ZE7FHsLiu3UgI
	KTymSxB8yHh/M8BMaSxJZZxBDbAV4B0cvPlID02pOeDJSAZL7PIXnhh/9Q4mrkMqNxkE5cO8C
	ptrcYy++TnAkqN8YVGSGIBdExXyehzuZt7Rq5YIlHOyvNPOceXrEmfFFzSrZhZRxFNT2f247W
	ejMNeWaVQaZg2gUXdsdEuAheyPoJRf4OG8ujCft/OnpLkzUmmAHZXQUbYweaThKUtVR5lxv5O
	THGr6BKWRRJLjjDm23u9XmJr8f1IXW5I/y6BhV09QGQaZ2bYn5aZf338s4egXNaGrMJVAP5tz
	5sG+dQb4twNzqk2dstrFD0ytH2PySQ909I7EyEGnH71JDGRBYuxyvvJlI5SFEEb12oHydHvQM
	/2XusIxXAgkn38Ll9jJTkdr2S+Ynjl8sCCcfePuH7OHsXAOgBD9UTd/KEExRd6S6GiMcHWCb9
	9gBVEKmxJXvyQBVYdT1HzIWYdFSsHDwH1tAisspyEChpFyQm4UpY5zFk0gy0gTvRPci0dnWCv
	xLk8tvu7erfALPX8uLrEGrJfzrjgia8r1+nesnsg1qFUxZJ6BvtIPSaO7xKu6Xj3+33aXNIfa
	LFvzXLk0KuYCR1Jl/j4YHf7As4NTJCScJj4g/Xj1cWZwGUyNa+rUQrQgHnsD4ZkodzL/D/7rX
	i6DsIq7wEIW2BKROUsR99yK5p5PWgpsB49+l0Kfs3yVSAWDE1nTIT3OSlsJ5aUtVeJyU2PPpB
	O2QQHvEc5QSwPYOZXPcprRGupgBMF9VqiRNCUn4JaDtKSAGVjNT9eW3Sz09a1KZPSzOnP+uKk
	ddDhNw8iU0FJYYzHU8i2YY5TebEWcX/eX/JFSBOSdLjYmXxAsAusGu4q6rFS+T7xuBTp/TXk+
	nLcBk9IxzuQ==
Subject: Building rootFS fails [log_check]
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
X-List-Received-Date: Tue, 09 Apr 2019 22:42:13 -0000
Content-Type: multipart/alternative;
	boundary="------------98A39485C997B3E5D3736533"
Content-Language: en-US

--------------98A39485C997B3E5D3736533
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

I'm facing some strange problems trying to backport old 1.9 Ruby to Thud P=
oky.
All packages build fine but the image's do_rootfs fails with below message=
 and
without any image winding up in tmp/deploy/images/<machine>:

=2D-----------------------------------------------------------------------=
---------------------
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: my-image-1.0-r0 do_rootfs: [log_check] my-image: found 2 error mess=
ages in the logfile:
[log_check] D: create=C2=A0=C2=A0=C2=A0=C2=A0 040755=C2=A0 1 (=C2=A0=C2=A0=
 0,=C2=A0=C2=A0 0)=C2=A0=C2=A0=C2=A0=C2=A0 0 /usr/share/ri/1.9.1/system/Ne=
t/HTTPExpectationFailed
[log_check] D: create=C2=A0=C2=A0=C2=A0=C2=A0 040755=C2=A0 1 (=C2=A0=C2=A0=
 0,=C2=A0=C2=A0 0)=C2=A0=C2=A0=C2=A0=C2=A0 0 /usr/share/ri/1.9.1/system/Ne=
t/HTTPPreconditionFailed

ERROR: my-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: <image-workdir>/1.0-r0/temp/log.do_ro=
otfs.19421
ERROR: Task (my-image.bb:do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 7927 tasks of which 7800 didn't need to be =
rerun and 1 failed.
=2D-----------------------------------------------------------------------=
---------------------

I believe there are some QA-related heuristics in place which dislike the =
naming of the two=C2=A0mentioned files for they contain "Failed" in their =
filename.=C2=A0Unlike Thud, that used to work in Krogoth.

If this was a pure QA-warning I'd assume there is a switch to ignore it bu=
t it seems to be treated like an actual error.

I'd be glad to hear about the best way to proceed with this. Thank you!

Best Regards,

Felix Lelchuk


--------------98A39485C997B3E5D3736533
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>
    </p>
    <div class=3D"moz-text-plain" wrap=3D"true" style=3D"font-family:
      -moz-fixed; font-size: 12px;" lang=3D"x-unicode">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi,=C2=A0

I'm facing some strange problems trying to backport old 1.9 Ruby to Thud P=
oky.=C2=A0
All packages build fine but the image's do_rootfs fails with below message=
 and=C2=A0
without any image winding up in tmp/deploy/images/&lt;machine&gt;:=C2=A0

=2D-----------------------------------------------------------------------=
---------------------=C2=A0
NOTE: Executing SetScene Tasks=C2=A0
NOTE: Executing RunQueue Tasks=C2=A0
ERROR: my-image-1.0-r0 do_rootfs: [log_check] my-image: found 2 error mess=
ages in the logfile:=C2=A0
[log_check] D: create=C2=A0=C2=A0=C2=A0=C2=A0 040755=C2=A0 1 (=C2=A0=C2=A0=
 0,=C2=A0=C2=A0 0)=C2=A0=C2=A0=C2=A0=C2=A0 0 /usr/share/ri/1.9.1/system/Ne=
t/HTTPExpectationFailed=C2=A0
[log_check] D: create=C2=A0=C2=A0=C2=A0=C2=A0 040755=C2=A0 1 (=C2=A0=C2=A0=
 0,=C2=A0=C2=A0 0)=C2=A0=C2=A0=C2=A0=C2=A0 0 /usr/share/ri/1.9.1/system/Ne=
t/HTTPPreconditionFailed=C2=A0

ERROR: my-image-1.0-r0 do_rootfs: Function failed: do_rootfs=C2=A0
ERROR: Logfile of failure stored in: &lt;image-workdir&gt;/1.0-r0/temp/log=
.do_rootfs.19421=C2=A0
ERROR: Task (my-image.bb:do_rootfs) failed with exit code '1'=C2=A0
NOTE: Tasks Summary: Attempted 7927 tasks of which 7800 didn't need to be =
rerun and 1 failed.=C2=A0
=2D-----------------------------------------------------------------------=
---------------------=C2=A0

I believe there are some QA-related heuristics in place which dislike the =
naming of the two=C2=A0mentioned files for they contain "Failed" in their =
filename.=C2=A0Unlike Thud, that used to work in Krogoth.

If this was a pure QA-warning I'd assume there is a switch to ignore it bu=
t it seems to be treated like an actual error.

I'd be glad to hear about the best way to proceed with this. Thank you!=C2=
=A0

Best Regards,=C2=A0

Felix Lelchuk

</pre>
    </div>
  </body>
</html>

--------------98A39485C997B3E5D3736533--
