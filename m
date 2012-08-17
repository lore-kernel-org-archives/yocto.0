Return-Path: <alexandru.damian@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A88EE0076A
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 07:01:17 -0700 (PDT)
Received: from mail-qa0-f45.google.com ([209.85.216.45])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 17 Aug 2012 07:01:15 -0700
Received: by qadc10 with SMTP id c10so1429960qad.4
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 07:01:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=SR4E/NupqmxENj1x+4DZKTaFLw+ir9ncGk4KS06GSO4=;
	b=i6AVNUnii5XvOMiIMOhKJJJhnLVaFZMww3I7QVzg3LW57W4DwlKPxC7sG7o81mk3XY
	aqd7btrZDvVqdtlENwsU1hkzD+V1QmCH4Gc1yTPiJS+Gh3h9C9RnIjbPU3sfyd1rJaG5
	kBnrcqNnukY1JTznLK/6PenP3hjogdCeehK03ntIWeOc+aV8LyMap6l7AHb/OUI0Icb1
	XNJohWt6sOrQ0RLRBi35YDLEoraX8umQdWhmzYfJKcay7iO6E59eDNnFoGOGgxTGt/Oe
	ddBdtmUi6AgZBRZ8oSMdV1BEvLT86UJNYBMG6H8Aaipg5z21X8lEEgOuM6lOffFVic7C
	Xa9Q==
MIME-Version: 1.0
Received: by 10.229.136.14 with SMTP id p14mr3758595qct.93.1345212074266; Fri,
	17 Aug 2012 07:01:14 -0700 (PDT)
Received: by 10.229.204.142 with HTTP; Fri, 17 Aug 2012 07:01:14 -0700 (PDT)
Date: Fri, 17 Aug 2012 17:01:14 +0300
Message-ID: <CAJ2CSBtt85SZBo9MoGvjEbvCcNp7+v9CaJjbM-tBf7_mOHFLbg@mail.gmail.com>
From: "Damian, Alexandru" <alexandru.damian@intel.com>
To: Yocto Project Discussions <yocto@linux.intel.com>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmFZmONon+r6LDUdSIvAPQq8asLgTYF8RMsI5hWBbl6abwyZJvo7kBfOPy0ZlNPZgYRqmi9
Subject: [offtopic] a hack to better view pipermail archives
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Aug 2012 14:01:17 -0000
Content-Type: multipart/alternative; boundary=00248c711847d5911204c776970e

--00248c711847d5911204c776970e
Content-Type: text/plain; charset=ISO-8859-1

Hi guys,

Getting frustrated by the deluge of list emails in my inbox, I decided I a
better way to view/search the web archives.
So I hacked away this User Script that hijacks the "Thread" view in the
mail archives, and allows panel-view (like in Thunderbird),
and text filtering on the mail index.

How to use:
1. Use Firefox (Chrome untested)

2. Install GreaseMonkey
https://addons.mozilla.org/en-US/firefox/addon/greasemonkey/

3. Install http://adamian-desktop.rb.intel.com/PiperMailViewer.user.js
(click on it after GreaseMonkey is installed).

4. Open
https://lists.yoctoproject.org/pipermail/yocto/2012-August/thread.html and
use the new view.

5. ???

6. Report bugs and feature requests to this thread.


Happy list reading,
Alex

--00248c711847d5911204c776970e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi guys,<br><br>Getting frustrated by the deluge of list emails in my inbox=
, I decided I a better way to view/search the web archives.<br>So I hacked =
away this User Script that hijacks the &quot;Thread&quot; view in the mail =
archives, and allows panel-view (like in Thunderbird),<br>
and text filtering on the mail index.<br><br>How to use:<br>1. Use Firefox =
(Chrome untested)<br><br>2. Install GreaseMonkey <a href=3D"https://addons.=
mozilla.org/en-US/firefox/addon/greasemonkey/">https://addons.mozilla.org/e=
n-US/firefox/addon/greasemonkey/</a><br>
<br>3. Install <a href=3D"http://adamian-desktop.rb.intel.com/PiperMailView=
er.user.js">http://adamian-desktop.rb.intel.com/PiperMailViewer.user.js</a>=
=A0 (click on it after GreaseMonkey is installed).<br><br>4. Open <a href=
=3D"https://lists.yoctoproject.org/pipermail/yocto/2012-August/thread.html"=
>https://lists.yoctoproject.org/pipermail/yocto/2012-August/thread.html</a>=
 and use the new view.<br>
<br>5. ???<br><br>6. Report bugs and feature requests to this thread.<br><b=
r><br>Happy list reading,<br>Alex<br>

--00248c711847d5911204c776970e--
