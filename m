Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web09.13995.1575912295469464498
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 09:24:56 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xB9HOqpm000980
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 9 Dec 2019 09:24:52 -0800
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Mon, 9 Dec 2019
 09:24:51 -0800
Subject: Re: [yocto] Fixing vulnerabilities in glibc #yocto
To: <milunj@yahoo.com>, <yocto@lists.yoctoproject.org>,
        Armin Kuster
	<akuster808@gmail.com>
References: <R19L.1575899282432368398.77t7@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <03db9b27-a262-a756-b275-16a0b5a1d195@windriver.com>
Date: Mon, 9 Dec 2019 12:24:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <R19L.1575899282432368398.77t7@lists.yoctoproject.org>
X-Originating-IP: [172.25.44.8]
Content-Type: multipart/alternative;
	boundary="------------52353943815958525F3BEA89"
Content-Language: en-CA

--------------52353943815958525F3BEA89
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail5.wrs.com id xB9HOqpm000980

On 12/9/19 8:48 AM, milunj via Lists.Yoctoproject.Org wrote:
> My greeting to all
> I am new on yocto project and yocto build environment is also new to=20
> me ...
> My working task is removing=C2=A0 vulnerabilities from libc library...
> The processor is based on arm5 while newer yoctos 2.7.x and 3.x. do=20
> not provide environment support for arm5 based processors.
>
> The glibc vulnerabilities are fixed in the latest glibc 2.30 released.=20
> <https://sourceware.org/ml/libc-alpha/2019-08/msg00029.html> package=20
> while yocto 2.6.x=C2=A0 includes 2.28 package.
> Also some of glibc vulnerabilities are patched in 2.6.4=20
> (\oecore-thud-20.0.4.tar\oecore-thud-20.0.4\meta\recipes-core\glibc\gli=
bc):
>
> CVE-2016-10739
> CVE-2018-19591
> CVE-2019-6488
> CVE-2019-7309
> CVE-2019-9169
> while there are some others those have not been patched:
> https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2005-3590
> https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2006-7254
> https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2018-20796
> https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2019-9192
>
> Does anyone know whether new vulnerability patches will be applied for=20
> yocto 2.6.5 and=C2=A0 when will be released yocto 2.6.5 ?


Welcome Milun,

The 2.6.4 was released in early November 2019 and
I don't see any plans to ever release 2.6.5 but I've
CCed Armin to confirm if this is the official YP plan.

As for patches to the 'thud' branch after 2.6.4:
 =C2=A0 ( see also: http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=
=3Dthud )

$ cd ../poky.git; git checkout thud; git pull

$ git branch --contains yocto-2.6.4
* thud

$ git log --oneline yocto-2.6.4...
8cd3ee6e1a (HEAD -> thud, origin/thud) linux-yocto/4.14: meta-yocto-bsp=20
update to 143
5bb142d7dd meta-yocto-bsp: Bump to the latest stable kernel for the BSPs
a8640d9a60 bitbake: fetch2: Ensure cached url data is matched to a datast=
ore
3e42c33da5 documentation: Setup for 2.6.4 release
532f2df770 bitbake: bitbake-worker child process create group before=20
registering SIGTERM handler

So it doesn't look like there are any CVE fixes there.

If you prefer not to do such work yourself, there are consultants and=20
support organizations
that provide support for much longer than the ~1 year YP timeline. See=20
the list of companies on:
https://www.yoctoproject.org/ecosystem/yocto-project-compatible-product-s=
howcase/
The supported releases listed on page is out of date and I'll get it=20
updated.

Good luck,

../Randy


> Thank you in advance
> Milun
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47603): https://lists.yoctoproject.org/g/yocto/mess=
age/47603
> Mute This Topic: https://lists.yoctoproject.org/mt/67793912/3616765
> Mute #yocto: https://lists.yoctoproject.org/mk?hashtag=3Dyocto&subid=3D=
6692177
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [randy.macle=
od@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
# Randy MacLeod
# Wind River Linux


--------------52353943815958525F3BEA89
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail5.wrs.com id xB9HOqpm000980

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/9/19 8:48 AM, milunj via
      Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:R19L.1575899282432368398.77t7@lists.yoctoproject.org">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      My greeting to all<br>
      I am new on yocto project and yocto build environment is also new
      to me ...<br>
      My working task is removing=C2=A0 vulnerabilities from libc library=
...<br>
      The processor is based on arm5 while newer yoctos 2.7.x and 3.x.
      do not provide environment support for arm5 based processors.<br>
      <br>
      The glibc vulnerabilities are fixed in the latest <a
        href=3D"https://sourceware.org/ml/libc-alpha/2019-08/msg00029.htm=
l"
        moz-do-not-send=3D"true">glibc 2.30 released.</a> package while
      yocto 2.6.x=C2=A0 includes 2.28 package.<br>
      Also some of glibc vulnerabilities are patched in 2.6.4
(\oecore-thud-20.0.4.tar\oecore-thud-20.0.4\meta\recipes-core\glibc\glibc=
):<br>
      <br>
      CVE-2016-10739<br>
      CVE-2018-19591<br>
      CVE-2019-6488<br>
      CVE-2019-7309<br>
      CVE-2019-9169<br>
      while there are some others those have not been patched:<br>
      <div id=3D"polarion-dle-clipboard-container"
        class=3D"polarion-dle-clipboard-container" contenteditable=3D"tru=
e"><span
          id=3D"polarion_source=3DVulnDB/VUL-9899" data-prototype=3D"Work=
Item"></span><a
href=3D"https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2005-3590"
          target=3D"_blank" rel=3D"noopener" moz-do-not-send=3D"true">htt=
ps://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2005-3590</a><br>
        <div id=3D"polarion-dle-clipboard-container"
          class=3D"polarion-dle-clipboard-container"
          contenteditable=3D"true"><span
            id=3D"polarion_source=3DVulnDB/VUL-9901"
            data-prototype=3D"WorkItem"></span><a
            href=3D"https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCV=
E-2006-7254"
            target=3D"_blank" rel=3D"noopener" moz-do-not-send=3D"true">h=
ttps://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2006-7254</a><br>
          <div id=3D"polarion-dle-clipboard-container"
            class=3D"polarion-dle-clipboard-container"
            contenteditable=3D"true"><span
              id=3D"polarion_source=3DVulnDB/VUL-9066"
              data-prototype=3D"WorkItem"></span><a
              href=3D"https://web.nvd.nist.gov/view/vuln/detail?vulnId=3D=
CVE-2018-20796"
              target=3D"_blank" rel=3D"noopener" moz-do-not-send=3D"true"=
>https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2018-20796</a><br=
>
            <div id=3D"polarion-dle-clipboard-container"
              class=3D"polarion-dle-clipboard-container"
              contenteditable=3D"true"><span
                id=3D"polarion_source=3DVulnDB/VUL-9068"
                data-prototype=3D"WorkItem"></span><a
                href=3D"https://web.nvd.nist.gov/view/vuln/detail?vulnId=3D=
CVE-2019-9192"
                target=3D"_blank" rel=3D"noopener" moz-do-not-send=3D"tru=
e">https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2019-9192</a><b=
r>
              <br>
              Does anyone know whether new vulnerability patches will be
              applied for yocto 2.6.5 and=C2=A0 when will be released yoc=
to
              2.6.5 ?<br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Welcome Milun,</p>
    <p>The 2.6.4 was released in early November 2019 and <br>
      I don't see any plans to ever release 2.6.5 but I've<br>
      CCed Armin to confirm if this is the official YP plan.</p>
    <p>As for patches to the 'thud' branch after 2.6.4:<br>
      =C2=A0 ( see also:
      <a class=3D"moz-txt-link-freetext" href=3D"http://git.yoctoproject.=
org/cgit/cgit.cgi/poky/log/?h=3Dthud">http://git.yoctoproject.org/cgit/cg=
it.cgi/poky/log/?h=3Dthud</a> )<br>
    </p>
    <p>$ cd ../poky.git; git checkout thud; git pull<br>
    </p>
    <p>$ git branch --contains yocto-2.6.4<br>
      * thud<br>
    </p>
    <p>$ git log --oneline yocto-2.6.4...<br>
      8cd3ee6e1a (HEAD -&gt; thud, origin/thud) linux-yocto/4.14:
      meta-yocto-bsp update to 143<br>
      5bb142d7dd meta-yocto-bsp: Bump to the latest stable kernel for
      the BSPs<br>
      a8640d9a60 bitbake: fetch2: Ensure cached url data is matched to a
      datastore<br>
      3e42c33da5 documentation: Setup for 2.6.4 release<br>
      532f2df770 bitbake: bitbake-worker child process create group
      before registering SIGTERM handler<br>
      <br>
    </p>
    <p>So it doesn't look like there are any CVE fixes there.</p>
    <p>If you prefer not to do such work yourself, there are consultants
      and support organizations<br>
      that provide support for much longer than the ~1 year YP timeline.
      See the list of companies on:<br>
      =C2=A0=C2=A0
<a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject.org/e=
cosystem/yocto-project-compatible-product-showcase/">https://www.yoctopro=
ject.org/ecosystem/yocto-project-compatible-product-showcase/</a><br>
      The supported releases listed on page is out of date and I'll get
      it updated.<br>
    </p>
    <p>Good luck,<br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:R19L.1575899282432368398.77t7@lists.yoctoproject.org">
      <div id=3D"polarion-dle-clipboard-container"
        class=3D"polarion-dle-clipboard-container" contenteditable=3D"tru=
e">
        <div id=3D"polarion-dle-clipboard-container"
          class=3D"polarion-dle-clipboard-container"
          contenteditable=3D"true">
          <div id=3D"polarion-dle-clipboard-container"
            class=3D"polarion-dle-clipboard-container"
            contenteditable=3D"true">
            <div id=3D"polarion-dle-clipboard-container"
              class=3D"polarion-dle-clipboard-container"
              contenteditable=3D"true">Thank you in advance<br>
              Milun</div>
          </div>
          <div id=3D"polarion-dle-clipboard-container"
            class=3D"polarion-dle-clipboard-container"
            contenteditable=3D"true">=C2=A0</div>
        </div>
        <br>
        <br>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47603): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47603">https://lists.yoctopr=
oject.org/g/yocto/message/47603</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/67793912/3616765">https://lists.yoctoproject.org/mt/=
67793912/3616765</a>
Mute #yocto: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/mk?hashtag=3Dyocto&amp;subid=3D6692177">https://lists.yocto=
project.org/mk?hashtag=3Dyocto&amp;subid=3D6692177</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a>  [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod=
@windriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------52353943815958525F3BEA89--
