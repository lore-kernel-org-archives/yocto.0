Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E83AEE01346
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 05:22:42 -0700 (PDT)
Received: by qady1 with SMTP id y1so1041731qad.14
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 05:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=C8lZuVhGeRWsy8okB0EFXFmFFHvzpbIt0L1bI55MkoI=;
	b=nFOI6oskTfXwi2JuQfZqxXTzumVvhEsGiPOOnfeQ7pI6uAqThnSuxDEsziOTHnXSCs
	QwugVzk3gQhveZRd921BtsRudce4lsDpkmkLosvwcTSAqmts4yn+/3QgvT6WwGDD33et
	iJXLJg+3UwBEIXfyOXKmIfl8cWOSZ9PKV/5Akv3oYzDZp3MWaz+kOiZnp72UrFTx2CRM
	nHvmdKDOsgkUEBmF3RXmIIHRt5z9tuw5i9HqJnDUCCTqf6DgBGoPn9u4WQUaqwjLXk+f
	+m2qmm1htePer6UGTuPMQbp12Nw8HVOBgwd2+VhUgZurZTSxGUVxRTBHTwwylTVxRbGn
	todw==
MIME-Version: 1.0
Received: by 10.224.39.147 with SMTP id g19mr6752337qae.46.1348057362375; Wed,
	19 Sep 2012 05:22:42 -0700 (PDT)
Received: by 10.224.174.19 with HTTP; Wed, 19 Sep 2012 05:22:42 -0700 (PDT)
In-Reply-To: <5059B73A.3040009@mlbassoc.com>
References: <CAB3sqtaSno+aXJ41YOZ9zXhjbF1xPwDYS3TYdooWHP0GoJB=yg@mail.gmail.com>
	<5059B73A.3040009@mlbassoc.com>
Date: Wed, 19 Sep 2012 13:22:42 +0100
Message-ID: <CAB3sqtZ-5MjfPdeH2UTqhfAH_3hd8F5i5kaC-_Us9XeD50Mz1Q@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Lighttpd recipe is falling ERROR: Error executing a python function
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
X-List-Received-Date: Wed, 19 Sep 2012 12:22:43 -0000
X-Groupsio-MsgNum: 9437
Content-Type: multipart/mixed; boundary=20cf306f74d638a55004ca0d1092

--20cf306f74d638a55004ca0d1092
Content-Type: multipart/alternative; boundary=20cf306f74d638a54c04ca0d1090

--20cf306f74d638a54c04ca0d1090
Content-Type: text/plain; charset=ISO-8859-1

I have attached the bb and bbappend files.

Thanks

On Wed, Sep 19, 2012 at 1:14 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2012-09-19 06:08, Tarek El-Sherbiny wrote:
>
>> I would like to build lighttpd for my imx6 project.
>>
>> Her is the error I'm getting after I type bitbake lighttpd
>>
>> NOTE: Resolving any missing task queue dependencies
>> NOTE: Preparing runqueue
>> NOTE: Executing SetScene Tasks
>> NOTE: Executing RunQueue Tasks
>> NOTE: Running task 644 of 885 (ID: 9, /home/telsherbiny/work/fsl/**
>> sources/poky/meta/recipes-**extended/lighttpd/lighttpd_1.**4.30.bb<http://lighttpd_1.4.30.bb><
>> http://lighttpd_1.4.30.bb>, do_package)
>> NOTE: Running task 882 of 885 (ID: 3, /home/telsherbiny/work/fsl/**
>> sources/poky/meta/recipes-**extended/lighttpd/lighttpd_1.**4.30.bb<http://lighttpd_1.4.30.bb><
>> http://lighttpd_1.4.30.bb>, do_populate_sysroot)
>>
>> NOTE: package lighttpd-1.4.30-r12: task do_package: Started
>> NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Started
>> NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Succeeded
>> ERROR: Error executing a python function in /home/telsherbiny/work/fsl/**
>> sources/poky/meta/recipes-**extended/lighttpd/lighttpd_1.**4.30.bb<http://lighttpd_1.4.30.bb><
>> http://lighttpd_1.4.30.bb>:
>>
>> AttributeError: 'NoneType' object has no attribute 'split'
>>
>> ERROR: The stack trace of python calls that resulted in this
>> exception/failure was:
>> ERROR:   File "populate_packages", line 323, in <module>
>> ERROR:
>> ERROR:   File "populate_packages", line 115, in populate_packages
>> ERROR:
>> ERROR:   File "populate_packages", line 72, in systemd_check_services
>> ERROR:
>> ERROR: The code that was being executed was:
>> ERROR:      0319:bb.note("%s contains dangling symlink to %s" % (pkg, l))
>> ERROR:      0320:d.setVar('RDEPENDS_' + pkg, bb.utils.join_deps(rdepends,
>> commasep=False))
>> ERROR:      0321:
>> ERROR:      0322:
>> ERROR:  *** 0323:populate_packages(d)
>> ERROR:      0324:
>> ERROR: (file: 'populate_packages', lineno: 323, function: <module>)
>> ERROR:      0111:for pkg_systemd in d.getVar('SYSTEMD_PACKAGES',
>> 1).split():
>> ERROR:      0112:if d.getVar('SYSTEMD_SERVICE' + "_" + pkg_systemd, 1)
>> and d.getVar('SYSTEMD_SERVICE' + "_" + pkg_systemd, 1).strip():
>> ERROR:      0113:systemd_generate_package_**scripts(pkg_systemd)
>> ERROR:      0114:systemd_add_rdepends(pkg_**systemd)
>> ERROR:  *** 0115:systemd_check_services()
>> ERROR:      0116:        lighttpd_libdir = d.expand('/usr/lib')
>> ERROR:      0117:        do_split_packages(d, lighttpd_libdir,
>> '^mod_(.*)\.so$', 'lighttpd-module-%s', 'Lighttpd module for %s',
>> extra_depends='')
>> ERROR:      0118:def update_rcd_package(pkg):
>> ERROR:      0119:bb.debug(1, 'adding update-rc.d calls to postinst/postrm
>> for %s' % pkg)
>> ERROR: (file: 'populate_packages', lineno: 115, function:
>> populate_packages)
>> ERROR: Function failed: populate_packages
>> ERROR: Logfile of failure stored in: /home/telsherbiny/work/fsl/**
>> build/tmp/work/armv7a-vfp-**neon-poky-linux-gnueabi/**
>> lighttpd-1.4.30-r12/temp/log.**do_package.32369
>> NOTE: package lighttpd-1.4.30-r12: task do_package: Failed
>> ERROR: Task 9 (/home/telsherbiny/work/fsl/**sources/poky/meta/recipes-**
>> extended/lighttpd/lighttpd_1.**4.30.bb <http://lighttpd_1.4.30.bb> <
>> http://lighttpd_1.4.30.bb>, do_package) failed with exit code '1'
>>
>> NOTE: Tasks Summary: Attempted 882 tasks of which 880 didn't need to be
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>    /home/telsherbiny/work/fsl/**sources/poky/meta/recipes-**
>> extended/lighttpd/lighttpd_1.**4.30.bb <http://lighttpd_1.4.30.bb> <
>> http://lighttpd_1.4.30.bb>, do_package
>>
>> Summary: There were 27 ERROR messages shown, returning a non-zero exit
>> code.
>>
>>
>> Can anyone help to solve this problem?
>>
>
> It would be necessary to see your recipe: lighttpd_1.4.30.bb
> (and any associated files)
>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--20cf306f74d638a54c04ca0d1090
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I have attached the bb and bbappend files.<div><br></div><div>Thanks<br><br=
><div class=3D"gmail_quote">On Wed, Sep 19, 2012 at 1:14 PM, Gary Thomas <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">=
gary@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 2012-09-19 06:08, Tarek=
 El-Sherbiny wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
I would like to build lighttpd for my imx6 project.<br>
<br>
Her is the error I&#39;m getting after I type bitbake lighttpd<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br></div>
NOTE: Running task 644 of 885 (ID: 9, /home/telsherbiny/work/fsl/<u></u>sou=
rces/poky/meta/recipes-<u></u>extended/lighttpd/<a href=3D"http://lighttpd_=
1.4.30.bb" target=3D"_blank">lighttpd_1.<u></u>4.30.bb</a> &lt;<a href=3D"h=
ttp://lighttpd_1.4.30.bb" target=3D"_blank">http://lighttpd_1.4.30.bb</a>&g=
t;, do_package)<br>

NOTE: Running task 882 of 885 (ID: 3, /home/telsherbiny/work/fsl/<u></u>sou=
rces/poky/meta/recipes-<u></u>extended/lighttpd/<a href=3D"http://lighttpd_=
1.4.30.bb" target=3D"_blank">lighttpd_1.<u></u>4.30.bb</a> &lt;<a href=3D"h=
ttp://lighttpd_1.4.30.bb" target=3D"_blank">http://lighttpd_1.4.30.bb</a>&g=
t;, do_populate_sysroot)<div class=3D"im">
<br>
NOTE: package lighttpd-1.4.30-r12: task do_package: Started<br>
NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Started<br>
NOTE: package lighttpd-1.4.30-r12: task do_populate_sysroot: Succeeded<br><=
/div>
ERROR: Error executing a python function in /home/telsherbiny/work/fsl/<u><=
/u>sources/poky/meta/recipes-<u></u>extended/lighttpd/<a href=3D"http://lig=
httpd_1.4.30.bb" target=3D"_blank">lighttpd_1.<u></u>4.30.bb</a> &lt;<a hre=
f=3D"http://lighttpd_1.4.30.bb" target=3D"_blank">http://lighttpd_1.4.30.bb=
</a>&gt;:<div>
<div class=3D"h5"><br>
AttributeError: &#39;NoneType&#39; object has no attribute &#39;split&#39;<=
br>
<br>
ERROR: The stack trace of python calls that resulted in this exception/fail=
ure was:<br>
ERROR: =A0 File &quot;populate_packages&quot;, line 323, in &lt;module&gt;<=
br>
ERROR:<br>
ERROR: =A0 File &quot;populate_packages&quot;, line 115, in populate_packag=
es<br>
ERROR:<br>
ERROR: =A0 File &quot;populate_packages&quot;, line 72, in systemd_check_se=
rvices<br>
ERROR:<br>
ERROR: The code that was being executed was:<br>
ERROR: =A0 =A0 =A00319:bb.note(&quot;%s contains dangling symlink to %s&quo=
t; % (pkg, l))<br>
ERROR: =A0 =A0 =A00320:d.setVar(&#39;RDEPENDS_&#39; + pkg, bb.utils.join_de=
ps(rdepends, commasep=3DFalse))<br>
ERROR: =A0 =A0 =A00321:<br>
ERROR: =A0 =A0 =A00322:<br>
ERROR: =A0*** 0323:populate_packages(d)<br>
ERROR: =A0 =A0 =A00324:<br>
ERROR: (file: &#39;populate_packages&#39;, lineno: 323, function: &lt;modul=
e&gt;)<br>
ERROR: =A0 =A0 =A00111:for pkg_systemd in d.getVar(&#39;SYSTEMD_PACKAGES&#3=
9;, 1).split():<br>
ERROR: =A0 =A0 =A00112:if d.getVar(&#39;SYSTEMD_SERVICE&#39; + &quot;_&quot=
; + pkg_systemd, 1) and d.getVar(&#39;SYSTEMD_SERVICE&#39; + &quot;_&quot; =
+ pkg_systemd, 1).strip():<br>
ERROR: =A0 =A0 =A00113:systemd_generate_package_<u></u>scripts(pkg_systemd)=
<br>
ERROR: =A0 =A0 =A00114:systemd_add_rdepends(pkg_<u></u>systemd)<br>
ERROR: =A0*** 0115:systemd_check_services()<br>
ERROR: =A0 =A0 =A00116: =A0 =A0 =A0 =A0lighttpd_libdir =3D d.expand(&#39;/u=
sr/lib&#39;)<br>
ERROR: =A0 =A0 =A00117: =A0 =A0 =A0 =A0do_split_packages(d, lighttpd_libdir=
, &#39;^mod_(.*)\.so$&#39;, &#39;lighttpd-module-%s&#39;, &#39;Lighttpd mod=
ule for %s&#39;, extra_depends=3D&#39;&#39;)<br>
ERROR: =A0 =A0 =A00118:def update_rcd_package(pkg):<br>
ERROR: =A0 =A0 =A00119:bb.debug(1, &#39;adding update-rc.d calls to postins=
t/postrm for %s&#39; % pkg)<br>
ERROR: (file: &#39;populate_packages&#39;, lineno: 115, function: populate_=
packages)<br>
ERROR: Function failed: populate_packages<br>
ERROR: Logfile of failure stored in: /home/telsherbiny/work/fsl/<u></u>buil=
d/tmp/work/armv7a-vfp-<u></u>neon-poky-linux-gnueabi/<u></u>lighttpd-1.4.30=
-r12/temp/log.<u></u>do_package.32369<br>
NOTE: package lighttpd-1.4.30-r12: task do_package: Failed<br></div></div>
ERROR: Task 9 (/home/telsherbiny/work/fsl/<u></u>sources/poky/meta/recipes-=
<u></u>extended/lighttpd/<a href=3D"http://lighttpd_1.4.30.bb" target=3D"_b=
lank">lighttpd_1.<u></u>4.30.bb</a> &lt;<a href=3D"http://lighttpd_1.4.30.b=
b" target=3D"_blank">http://lighttpd_1.4.30.bb</a>&gt;, do_package) failed =
with exit code &#39;1&#39;<div class=3D"im">
<br>
NOTE: Tasks Summary: Attempted 882 tasks of which 880 didn&#39;t need to be=
 rerun and 1 failed.<br>
<br>
Summary: 1 task failed:<br></div>
=A0 =A0/home/telsherbiny/work/fsl/<u></u>sources/poky/meta/recipes-<u></u>e=
xtended/lighttpd/<a href=3D"http://lighttpd_1.4.30.bb" target=3D"_blank">li=
ghttpd_1.<u></u>4.30.bb</a> &lt;<a href=3D"http://lighttpd_1.4.30.bb" targe=
t=3D"_blank">http://lighttpd_1.4.30.bb</a>&gt;, do_package<div class=3D"im"=
>
<br>
Summary: There were 27 ERROR messages shown, returning a non-zero exit code=
.<br>
<br>
<br>
Can anyone help to solve this problem?<br>
</div></blockquote>
<br>
It would be necessary to see your recipe: <a href=3D"http://lighttpd_1.4.30=
.bb" target=3D"_blank">lighttpd_1.4.30.bb</a><br>
(and any associated files)<span class=3D"HOEnZb"><font color=3D"#888888"><b=
r>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--20cf306f74d638a54c04ca0d1090--

--20cf306f74d638a55004ca0d1092
Content-Type: application/octet-stream; name="lighttpd_1.4.30.bb"
Content-Disposition: attachment; filename="lighttpd_1.4.30.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_h7aeg5l40

REVTQ1JJUFRJT04gPSAiTGlnaHR3ZWlnaHQgaGlnaC1wZXJmb3JtYW5jZSB3ZWIgc2VydmVyIgpI
T01FUEFHRSA9ICJodHRwOi8vd3d3LmxpZ2h0dHBkLm5ldC8iCkJVR1RSQUNLRVIgPSAiaHR0cDov
L3JlZG1pbmUubGlnaHR0cGQubmV0L3Byb2plY3RzL2xpZ2h0dHBkL2lzc3VlcyIKCkxJQ0VOU0Ug
PSAiQlNEIgpMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HO21kNT1lNGRhYzVjNmFi
MTY5YWEyMTJmZWI1MDI4ODUzYTU3OSIKCgpTRUNUSU9OID0gIm5ldCIKREVQRU5EUyA9ICJ6bGli
IGxpYnBjcmUiClJERVBFTkRTXyR7UE59ICs9ICIgXAogICAgICAgICAgICAgICBsaWdodHRwZC1t
b2R1bGUtYWNjZXNzIFwKICAgICAgICAgICAgICAgbGlnaHR0cGQtbW9kdWxlLWFjY2Vzc2xvZyBc
CiAgICAgICAgICAgICAgIGxpZ2h0dHBkLW1vZHVsZS1pbmRleGZpbGUgXAogICAgICAgICAgICAg
ICBsaWdodHRwZC1tb2R1bGUtZGlybGlzdGluZyBcCiAgICAgICAgICAgICAgIGxpZ2h0dHBkLW1v
ZHVsZS1zdGF0aWNmaWxlIFwKIgoKUFIgPSAicjAiCgpTUkNfVVJJID0gImh0dHA6Ly9kb3dubG9h
ZC5saWdodHRwZC5uZXQvbGlnaHR0cGQvcmVsZWFzZXMtMS40LngvbGlnaHR0cGQtJHtQVn0udGFy
LmJ6MiBcCiAgICAgICAgZmlsZTovL2luZGV4Lmh0bWwubGlnaHR0cGQgXAogICAgICAgIGZpbGU6
Ly9saWdodHRwZC5jb25mIFwKICAgICAgICBmaWxlOi8vbGlnaHR0cGQgXAoiCgpTUkNfVVJJW21k
NXN1bV0gPSAiNjNmOWRmNTJkY2FlMGFiNTY4OWE5NWM5OWM1NGU0OGEiClNSQ19VUklbc2hhMjU2
c3VtXSA9ICIwZDc5NTU5N2U0NjY2ZGJmNmZmZTQ0YjRhNDJmMzg4ZGRiNDQ3MzZkZGZhYjBiMWFj
MDkxZTViYjM1MjEyYzJkIgoKRVhUUkFfT0VDT05GID0gIiBcCiAgICAgICAgICAgICAtLXdpdGhv
dXQtYnppcDIgXAogICAgICAgICAgICAgLS13aXRob3V0LWxkYXAgXAogICAgICAgICAgICAgLS13
aXRob3V0LWx1YSBcCiAgICAgICAgICAgICAtLXdpdGhvdXQtbWVtY2FjaGUgXAogICAgICAgICAg
ICAgLS13aXRoLXBjcmUgXAogICAgICAgICAgICAgLS13aXRob3V0LXdlYmRhdi1wcm9wcyBcCiAg
ICAgICAgICAgICAtLXdpdGhvdXQtd2ViZGF2LWxvY2tzIFwKICAgICAgICAgICAgIC0td2l0aG91
dC1vcGVuc3NsIFwKICAgICAgICAgICAgIC0tZGlzYWJsZS1zdGF0aWMgXAoiCgppbmhlcml0IGF1
dG90b29scyBwa2djb25maWcgdXBkYXRlLXJjLmQgZ2V0dGV4dAoKSU5JVFNDUklQVF9OQU1FID0g
ImxpZ2h0dHBkIgpJTklUU0NSSVBUX1BBUkFNUyA9ICJkZWZhdWx0cyA3MCIKCmRvX2luc3RhbGxf
YXBwZW5kKCkgewogICAgaW5zdGFsbCAtZCAke0R9JHtzeXNjb25mZGlyfS9pbml0LmQgJHtEfS93
d3cvbG9ncyAke0R9L3d3dy9wYWdlcy9kYXYgJHtEfS93d3cvdmFyCiAgICBpbnN0YWxsIC1tIDA3
NTUgJHtXT1JLRElSfS9saWdodHRwZCAke0R9JHtzeXNjb25mZGlyfS9pbml0LmQKICAgIGluc3Rh
bGwgLW0gMDc1NSAke1dPUktESVJ9L2xpZ2h0dHBkLmNvbmYgJHtEfSR7c3lzY29uZmRpcn0KICAg
IGluc3RhbGwgLW0gMDY0NCAke1dPUktESVJ9L2luZGV4Lmh0bWwubGlnaHR0cGQgJHtEfS93d3cv
cGFnZXMvaW5kZXguaHRtbAp9CgpGSUxFU18ke1BOfSArPSAiJHtzeXNjb25mZGlyfSAvd3d3IgoK
Q09ORkZJTEVTXyR7UE59ID0gIiR7c3lzY29uZmRpcn0vbGlnaHR0cGQuY29uZiIKClBBQ0tBR0VT
X0RZTkFNSUMgPSAibGlnaHR0cGQtbW9kdWxlLSoiCgpweXRob24gcG9wdWxhdGVfcGFja2FnZXNf
cHJlcGVuZCAoKSB7CiAgICAgICAgbGlnaHR0cGRfbGliZGlyID0gZC5leHBhbmQoJyR7bGliZGly
fScpCiAgICAgICAgZG9fc3BsaXRfcGFja2FnZXMoZCwgbGlnaHR0cGRfbGliZGlyLCAnXm1vZF8o
LiopXC5zbyQnLCAnbGlnaHR0cGQtbW9kdWxlLSVzJywgJ0xpZ2h0dHBkIG1vZHVsZSBmb3IgJXMn
LCBleHRyYV9kZXBlbmRzPScnKQp9Cg==

--20cf306f74d638a55004ca0d1092
Content-Type: application/octet-stream; name="lighttpd_1.4.30.bbappend"
Content-Disposition: attachment; filename="lighttpd_1.4.30.bbappend"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_h7aeidk71

RklMRVNFWFRSQVBBVEhTIDo9ICIke1RISVNESVJ9LyR7UE59IgoKUFJJTkMgOj0gIiR7QGludChQ
UklOQykgKyA5fSIKCiNpbmhlcml0IHN5c3RlbWQKCgpSREVQRU5EU18ke1BOfSArPSAiIFwKICAg
ICAgICAgICAgICAgbGlnaHR0cGQtbW9kdWxlLWFsaWFzIFwKICAgICAgICAgICAgICAgbGlnaHR0
cGQtbW9kdWxlLWZhc3RjZ2kgXAogICAgICAgICAgICAgICBsaWdodHRwZC1tb2R1bGUtc3NpIFwK
IgoKU1JDX1VSSSArPSAiXAoJZmlsZTovL0FESC1DT01QQVQucGF0Y2ggXAogICAgICAgIGZpbGU6
Ly9jcmVhdGUtbWltZS5hc3NpZ24ucGwgXAogICAgICAgIGZpbGU6Ly9taW1lLnR5cGVzIFwKIgoK
RVhUUkFfT0VDT05GICs9ICIgXAoJLS13aXRoLWFkaC1jb21wYXQgXAoiCgpkb193ZWJwYWdlcygp
ewogICAgaW5zdGFsbCAtZCAke0R9JHtsb2NhbHN0YXRlZGlyfS93d3cvbGlnaHR0cGQgJHtEfSR7
ZGF0YWRpcn0vbGlnaHR0cGQKICAgIGluc3RhbGwgLW0gMDY0NCAke1dPUktESVJ9L21pbWUudHlw
ZXMgJHtEfSR7c3lzY29uZmRpcn0KICAgIGluc3RhbGwgLW0gMDc1NSAke1dPUktESVJ9L2NyZWF0
ZS1taW1lLmFzc2lnbi5wbCAke0R9JHtkYXRhZGlyfS9saWdodHRwZC8KCiMgICBpbnN0YWxsIC1E
IC1tIDA2NDQgL3Zhci93d3cvbGlnaHR0cGQvaW5kZXguaHRtbCAke0R9JHtsb2NhbHN0YXRlZGly
fS93d3cvbGlnaHR0cGQKICAgIGNwICAtciAvdmFyL3d3dy9saWdodHRwZC8qICR7RH0ke2xvY2Fs
c3RhdGVkaXJ9L3d3dy9saWdodHRwZAp9CgphZGR0YXNrIHdlYnBhZ2VzIGFmdGVyIGRvX2luc3Rh
bGwgYmVmb3JlIGRvX3BhY2thZ2UK

--20cf306f74d638a55004ca0d1092--
