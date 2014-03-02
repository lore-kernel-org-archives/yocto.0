Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f195.google.com (mail-vc0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C845E008C8
	for <yocto@yoctoproject.org>; Sat,  1 Mar 2014 22:13:03 -0800 (PST)
Received: by mail-vc0-f195.google.com with SMTP id le5so872793vcb.2
	for <yocto@yoctoproject.org>; Sat, 01 Mar 2014 22:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5ewGzFu/FTiyKV8prndkhIktjTUlIZt7YKHzBehI+tQ=;
	b=jN42GxJyJk62kvo956mxINsu4vxF9AYNYnxFYhcjj50NssQREsXFhCn3cgepKZP2xr
	T8NxipahCm91Jq7DNq5f4XaSKmn2kIS2x6BD35KqvWh9aBhHUUADTQ7CFhXOQ8fiYCdi
	M/cQ6OKlex5UGxoBdiCne5pJa1qDH/j/XmkenHvpjuJvnzIQ4SfzcrAS6wnQsoZt7USg
	uUmmMVkjvLhByXtoR0RtJE5SD7GtHLfzP5iv7oWCLJV/TmToktqSUeJyMIYmbY9k2hgR
	SE6MvaOA9VVnKdTJimfa4cAWq462ECBh/0WAKs/D7TYp9D52QpHlqGl4EjHjVemGswGA
	WPYA==
MIME-Version: 1.0
X-Received: by 10.221.30.14 with SMTP id sa14mr112263vcb.44.1393740782367;
	Sat, 01 Mar 2014 22:13:02 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Sat, 1 Mar 2014 22:13:02 -0800 (PST)
Date: Sat, 1 Mar 2014 23:13:02 -0700
Message-ID: <CAA7h+Ep1+4wTDDfmp=CETPJMLFkP9M_AtRtR8BSvq+Mua3hS9A@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: yocto@yoctoproject.org
Subject: openjade-0.6.14.tar.gz Compile Error
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
X-List-Received-Date: Sun, 02 Mar 2014 06:13:04 -0000
Content-Type: multipart/alternative; boundary=001a11336a2e3df96b04f39990ad

--001a11336a2e3df96b04f39990ad
Content-Type: text/plain; charset=ISO-8859-1

I get the following error when I try to compile. I cannot locate the file
"openjade-0.6.14.tar.gz". Any thoughts?




WARNING: Failed to fetch URL
http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz,
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 8, output:
http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz:
2014-03-01 23:05:10 ERROR 404: Not Found.

ERROR: Function failed: Fetcher failure for URL: '
http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'. Unable
to fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/infinitezero/yocto001/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r5/temp/log.do_fetch.9159
ERROR: Task 1501
(/home/infinitezero/yocto001/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1815 tasks of which 1808 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/infinitezero/yocto001/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb, do_fetch
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--001a11336a2e3df96b04f39990ad
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I get the following error when I try to compile. I cannot =
locate the file &quot;openjade-0.6.14.tar.gz&quot;. Any thoughts?<br><br><b=
r><br><br>WARNING: Failed to fetch URL <a href=3D"http://downloads.sourcefo=
rge.net/openjade/openjade-0.6.14.tar.gz">http://downloads.sourceforge.net/o=
penjade/openjade-0.6.14.tar.gz</a>, attempting MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 8, output:<br><=
a href=3D"http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz"=
>http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz</a>:<br>
2014-03-01 23:05:10 ERROR 404: Not Found.<br><br>ERROR: Function failed: Fe=
tcher failure for URL: &#39;<a href=3D"http://downloads.sourceforge.net/ope=
njade/openjade-0.6.14.tar.gz">http://downloads.sourceforge.net/openjade/ope=
njade-0.6.14.tar.gz</a>&#39;. Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in: /home/infinitezero/yocto001/build/tmp/=
work/x86_64-linux/docbook-utils-native/0.6.14-r5/temp/log.do_fetch.9159<br>=
ERROR: Task 1501 (/home/infinitezero/yocto001/poky/meta/recipes-devtools/do=
cbook-utils/<a href=3D"http://docbook-utils-native_0.6.14.bb">docbook-utils=
-native_0.6.14.bb</a>, do_fetch) failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 1815 tasks of which 1808 didn&#39;t need to =
be rerun and 1 failed.<br>Waiting for 0 running tasks to finish:<br><br>Sum=
mary: 1 task failed:<br>=A0 /home/infinitezero/yocto001/poky/meta/recipes-d=
evtools/docbook-utils/<a href=3D"http://docbook-utils-native_0.6.14.bb">doc=
book-utils-native_0.6.14.bb</a>, do_fetch<br>
Summary: There was 1 WARNING message shown.<br>Summary: There were 2 ERROR =
messages shown, returning a non-zero exit code.<br><br></div>

--001a11336a2e3df96b04f39990ad--
