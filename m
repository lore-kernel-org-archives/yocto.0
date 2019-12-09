Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.16035.1575920801610990569
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 11:46:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xt6JdMj7;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id r11so7635784pgf.1
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2019 11:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:organization
         :user-agent:mime-version;
        bh=0rVmWkkK2vl9PHTG4H8Qe9WU78AdfXSdM/hNhrKexxQ=;
        b=Xt6JdMj7kfKksBdIcYt5r8AIKmmBii7xHlhRN7w49wOcuXht3662NvRzHseQGm84ZX
         nqO8BnV66TEhB84vudBxmHOGCoVDmZM9qdr+cpkrVwZNQHHOpR9C1M7DOQpw71xnGCKq
         GpQ0aGmDG/1QgbHVIEVQN8tgclTWGh4HsRsvxyCMBCMvhLhm0DIE9tETaFFQqyoWLdEd
         obrlCht1atVBH1FtSz3hdJZmuzr6HoF3X33Aeb0dNfee41DMslVMPkIAGhB7PzZ5umGa
         Fb/9BbuhpYYhwJBO965k3lzC81GI8alGqWAsUWST3eX/eKJkYDTOM1V80VABR1uFi0Oq
         ycIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:organization:user-agent:mime-version;
        bh=0rVmWkkK2vl9PHTG4H8Qe9WU78AdfXSdM/hNhrKexxQ=;
        b=lkot65HafbQ163Wns6kNOz9QYpiIX8LQkAhAN0wmuGLmgwSVEGi+dc/nkXnKwS2+1T
         nokmR3YsD055eXxQizOSFRcDNW54D4lZ8io/Q+eh0h3uFT1tmHib1m3m6GlBqon9MmHn
         BBQbswQvcstKaRdfoHPW6ISAEw4TzYt0DbivldFRE57/R93gwgHKpcJubzBgaIzq2wGh
         Z3zVCtcTN3amGROsprUjGZnwQkA6toCj8quvOZRWGkWkfOhHY91cDr+wCi4jjntS+7cN
         B7aYg8nojEv20P5l12g4u4eKrNnX+Y07PWP4Lc3HTwe5tDy/v4/asEPHushGqyG6hW5y
         3fWw==
X-Gm-Message-State: APjAAAUK6SG2l8IelwMdKEtKbDXbmH6rKSklgYsy9t9dNU/eHAtsj7Y/
	AWMDCoAVNxT9JmPKoRKkUJk=
X-Google-Smtp-Source: APXvYqxN+YK0hbFUcMq1ToQd3Yk01blxtqca6WI3aIGsVfsnkSXZgpzEO4cW4BxIPeXuql4r8TmFTA==
X-Received: by 2002:aa7:93db:: with SMTP id y27mr31422713pff.72.1575920800544;
        Mon, 09 Dec 2019 11:46:40 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from apollo ([2601:646:9200:4e0::afb7])
        by smtp.gmail.com with ESMTPSA id d77sm283404pfd.126.2019.12.09.11.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 11:46:40 -0800 (PST)
Message-ID: <616242a482e6237b9fc15ce7b308a9bf4e4a22b9.camel@gmail.com>
Subject: Re: [yocto] Fixing vulnerabilities in glibc #yocto
From: "Khem Raj" <raj.khem@gmail.com>
To: milunj@yahoo.com, yocto@lists.yoctoproject.org
Date: Mon, 09 Dec 2019 11:46:38 -0800
In-Reply-To: <R19L.1575899282432368398.77t7@lists.yoctoproject.org>
References: <R19L.1575899282432368398.77t7@lists.yoctoproject.org>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-v5qkXQhWK3cQIFqT4LrJ"

--=-v5qkXQhWK3cQIFqT4LrJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-12-09 at 05:48 -0800, milunj via Lists.Yoctoproject.Org
wrote:
> My greeting to all
> I am new on yocto project and yocto build environment is also new to
> me ...
> My working task is removing  vulnerabilities from libc library...
> The processor is based on arm5 while newer yoctos 2.7.x and 3.x. do
> not provide environment support for arm5 based processors.
> 
> The glibc vulnerabilities are fixed in the latest glibc 2.30
> released. package while yocto 2.6.x  includes 2.28 package.
> Also some of glibc vulnerabilities are patched in 2.6.4 (\oecore-
> thud-20.0.4.tar\oecore-thud-20.0.4\meta\recipes-core\glibc\glibc):
> 
> CVE-2016-10739
> CVE-2018-19591
> CVE-2019-6488
> CVE-2019-7309
> CVE-2019-9169
> while there are some others those have not been patched:
> 
> https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2005-3590
> 
> https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2006-7254
> 
> https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2018-20796
> 
> https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2019-9192
> 
> Does anyone know whether new vulnerability patches will be applied
> for yocto 2.6.5 and  when will be released yocto 2.6.5 ?

it depends on contribution, if you can contribute the fixes thats best
for predictability, secondly, you can also open tickets in yocto bug
tracking system.
> Thank you in advance
> Milun
> 
>  
> 
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-Links: You receive all messages sent to this
> group.
> View/Reply Online (#47603): 
> https://lists.yoctoproject.org/g/yocto/message/47603
> Mute This Topic: https://lists.yoctoproject.org/mt/67793912/1997914
> Mute #yocto: 
> https://lists.yoctoproject.org/mk?hashtag=yocto&subid=6692173
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@
> gmail.com]-=-=-=-=-=-=-=-=-=-=-=-

--=-v5qkXQhWK3cQIFqT4LrJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><div>On Mon, 2019-12-09 at 05:48 -0800, milunj via Lists.Yoctoproject.O=
rg wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border=
-left:2px #729fcf solid;padding-left:1ex">My greeting to all<br>I am new on=
 yocto project and yocto build environment is also new to me ...<br>My work=
ing task is removing&nbsp; vulnerabilities from libc library...<br>The proc=
essor is based on arm5 while newer yoctos 2.7.x and 3.x. do not provide env=
ironment support for arm5 based processors.<br><br>The glibc vulnerabilitie=
s are fixed in the latest <a href=3D"https://sourceware.org/ml/libc-alpha/2=
019-08/msg00029.html">glibc 2.30 released.</a> package while yocto 2.6.x&nb=
sp; includes 2.28 package.<br>Also some of glibc vulnerabilities are patche=
d in 2.6.4 (\oecore-thud-20.0.4.tar\oecore-thud-20.0.4\meta\recipes-core\gl=
ibc\glibc):<br><br>CVE-2016-10739<br>CVE-2018-19591<br>CVE-2019-6488<br>CVE=
-2019-7309<br>CVE-2019-9169<br>while there are some others those have not b=
een patched:<br>
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboar=
d-container" contenteditable=3D"true"><span id=3D"polarion_source=3DVulnDB/=
VUL-9899" data-prototype=3D"WorkItem"></span><a href=3D"https://web.nvd.nis=
t.gov/view/vuln/detail?vulnId=3DCVE-2005-3590" target=3D"_blank" rel=3D"noo=
pener">https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2005-3590</a>=
<br>
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboar=
d-container" contenteditable=3D"true"><span id=3D"polarion_source=3DVulnDB/=
VUL-9901" data-prototype=3D"WorkItem"></span><a href=3D"https://web.nvd.nis=
t.gov/view/vuln/detail?vulnId=3DCVE-2006-7254" target=3D"_blank" rel=3D"noo=
pener">https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2006-7254</a>=
<br>
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboar=
d-container" contenteditable=3D"true"><span id=3D"polarion_source=3DVulnDB/=
VUL-9066" data-prototype=3D"WorkItem"></span><a href=3D"https://web.nvd.nis=
t.gov/view/vuln/detail?vulnId=3DCVE-2018-20796" target=3D"_blank" rel=3D"no=
opener">https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2018-20796</=
a><br>
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboar=
d-container" contenteditable=3D"true"><span id=3D"polarion_source=3DVulnDB/=
VUL-9068" data-prototype=3D"WorkItem"></span><a href=3D"https://web.nvd.nis=
t.gov/view/vuln/detail?vulnId=3DCVE-2019-9192" target=3D"_blank" rel=3D"noo=
pener">https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2019-9192</a>=
<br><br>Does anyone know whether new vulnerability patches will be applied =
for yocto 2.6.5 and&nbsp; when will be released yocto 2.6.5 ?<br></div></di=
v></div></div></blockquote><div><br></div><div>it depends on contribution, =
if you can contribute the fixes thats best for predictability, secondly, yo=
u can also open tickets in yocto bug tracking system.</div><div><br></div><=
blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fc=
f solid;padding-left:1ex"><div id=3D"polarion-dle-clipboard-container" clas=
s=3D"polarion-dle-clipboard-container" contenteditable=3D"true"><div id=3D"=
polarion-dle-clipboard-container" class=3D"polarion-dle-clipboard-container=
" contenteditable=3D"true"><div id=3D"polarion-dle-clipboard-container" cla=
ss=3D"polarion-dle-clipboard-container" contenteditable=3D"true"><div id=3D=
"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboard-containe=
r" contenteditable=3D"true">Thank you in advance<br>Milun</div>
</div>
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboar=
d-container" contenteditable=3D"true">&nbsp;</div>
</div>
<br><br></div>
<pre>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</pre><pre>Links: You rec=
eive all messages sent to this group.</pre><pre><br></pre><pre>View/Reply O=
nline (#47603): </pre><a href=3D"https://lists.yoctoproject.org/g/yocto/mes=
sage/47603"><pre>https://lists.yoctoproject.org/g/yocto/message/47603</pre>=
</a><pre><br></pre><pre>Mute This Topic: </pre><a href=3D"https://lists.yoc=
toproject.org/mt/67793912/1997914"><pre>https://lists.yoctoproject.org/mt/6=
7793912/1997914</pre></a><pre><br></pre><pre>Mute #yocto: </pre><a href=3D"=
https://lists.yoctoproject.org/mk?hashtag=3Dyocto&amp;subid=3D6692173"><pre=
>https://lists.yoctoproject.org/mk?hashtag=3Dyocto&amp;subid=3D6692173</pre=
></a><pre><br></pre><pre>Group Owner: </pre><a href=3D"mailto:yocto+owner@l=
ists.yoctoproject.org"><pre>yocto+owner@lists.yoctoproject.org</pre></a><pr=
e><br></pre><pre>Unsubscribe: </pre><a href=3D"https://lists.yoctoproject.o=
rg/g/yocto/unsub"><pre>https://lists.yoctoproject.org/g/yocto/unsub</pre></=
a><pre>  [</pre><a href=3D"mailto:raj.khem@gmail.com"><pre>raj.khem@gmail.c=
om</pre></a><pre>]</pre><pre>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<=
/pre></blockquote></body></html>

--=-v5qkXQhWK3cQIFqT4LrJ--
