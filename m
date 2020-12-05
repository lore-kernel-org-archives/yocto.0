Received: from server224-3.web-hosting.com (server224-3.web-hosting.com [198.54.115.174])
 by mx.groups.io with SMTP id smtpd.web10.8519.1607196481934426896
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Dec 2020 11:28:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@warpedelectronics.com header.s=default header.b=V6rEYqal;
 spf=none, err=SPF record not found (domain: warpedelectronics.com, ip: 198.54.115.174, mailfrom: mailings@warpedelectronics.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=warpedelectronics.com; s=default; h=Content-Type:Message-ID:Subject:To:From
	:Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=i8RBNWZKyNKejaXC2v1+NEy8Oohie+khLbM6MVkNZz4=; b=V6rEYqalH6QtC1D3sgm7O3NWnu
	cPEVuivt0M6/qZ55A5/O3lK+npkvMh36mi5g63PE48vD066+MPyBru5xQIdhcgGxGHw9TzNFNR0YK
	yNdGUu/sjhNzUvz4+46n6tclwKLyiOYcKf65ILfV5LDaMrxmpcSNA+W43SjC3Rfnd3QxCwc87EI5x
	+koQxO2szoz93YdUHpcr3KBNvcvEkzDI782nZuNDTFehxpuVLx1EfxeYA+PZEIvwkmC/+xyjmUALw
	J6oK0fDp7kMCnMsEgNiFueBkJF3ovOHsuOtqFz0iNrfripDXg8Wgr2RJGilIJIEvDKcsI7NMd24VO
	Pw6Sfl9g==;
Received: from [::1] (port=45782 helo=server224.web-hosting.com)
	by server224.web-hosting.com with esmtpa (Exim 4.93)
	(envelope-from <mailings@warpedelectronics.com>)
	id 1kldDo-001H5J-Rp
	for yocto@lists.yoctoproject.org; Sat, 05 Dec 2020 14:28:01 -0500
MIME-Version: 1.0
Date: Sat, 05 Dec 2020 13:27:56 -0600
From: mailings@warpedelectronics.com
To: Yocto <yocto@lists.yoctoproject.org>
Subject: Dunfell :: Recipe fixes to install Webmin 1.962 and fix Perl CGI
Message-ID: <b6a407422370c11122bdbe22183b2599@warpedelectronics.com>
X-Sender: mailings@warpedelectronics.com
User-Agent: Roundcube Webmail/1.3.15
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server224.web-hosting.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - warpedelectronics.com
X-Get-Message-Sender-Via: server224.web-hosting.com: authenticated_id: mailings@warpedelectronics.com
X-Authenticated-Sender: server224.web-hosting.com: mailings@warpedelectronics.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
X-Groupsio-MsgNum: 51651
Content-Type: multipart/mixed;
 boundary="=_ea29a91d8fad0d0b878614a75896a102"

--=_ea29a91d8fad0d0b878614a75896a102
Content-Type: multipart/alternative;
 boundary="=_eb7fb60eb8fb984154ff2c2712916a30"

--=_eb7fb60eb8fb984154ff2c2712916a30
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII

Hello all: 

Just a quick email to submit to the group.  I needed to build a distro
to include Webmin.  The version that comes with OpenEmbedded (webmin
1.850) in meta-webserver/recipes-webadmin/webmin is kind of an old
release, and there were issues with the build. 

Below is a new recipe:  webmin_1.962.bb   (Attached MD5:
301394DDA264C712C1BF9496D409D3CF) 

Just add "webmin" to your local.conf to add it to your distro.  You can
also override the default username and password in local.conf if
desired.  One issue...the "do_package" for Webmin takes around 25
minutes on my machine.  Almost as long as the kernel.  :)  I'm not sure
why.  It's one of the things I need to look into. 

Once built, you can go into the configuration and add any additional
modules you wish.  The utility will list them for you and download them
from the Webmin site. 

This recipe builds on the previous work, adds basic modules and themes
to the build, and updates some of the build dependencies. 

Also...in order to build this package, another recipe needs
modification.  I have not created a patch file for this yet.  I'm not
sure it would be appropriate as this library is kind of in limbo...but I
did update the recipe to download the latest version of the file: 
libcgi-perl_4.51.bb (OpenEmbedded > meta-perl-recipes-perl/libcgi) 
(Attached MD5: 0126F5119E9AA358C461ABC5BF777450) 

Basically this recipe downloads the latest version of the library as
Webmin depends on it. 

Hope these help.  I will get patches made up and submitted soon. 

-Joe 
 Warped Electronics

--=_eb7fb60eb8fb984154ff2c2712916a30
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Hello all:</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Just a quick email to submit to the group.&nbsp; I needed to build a distro=
 to include Webmin.&nbsp; The version that comes with OpenEmbedded (webmin =
1.850) in meta-webserver/recipes-webadmin/webmin is kind of an old release,=
 and there were issues with the build.</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Below is a new recipe:&nbsp; webmin_1.962.bb&nbsp;&nbsp; (Attached MD5: 301=
394DDA264C712C1BF9496D409D3CF)</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Just add "webmin" to your local.conf to add it to your distro.&nbsp; You ca=
n also override the default username and password in local.conf if desired=
=2E&nbsp; One issue...the "do_package" for Webmin takes around 25 minutes o=
n my machine.&nbsp; Almost as long as the kernel.&nbsp; :)&nbsp; I'm not su=
re why.&nbsp; It's one of the things I need to look into.</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Once built, you can go into the configuration and add any additional module=
s you wish.&nbsp; The utility will list them for you and download them from=
 the Webmin site.</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
This recipe builds on the previous work, adds basic modules and themes to t=
he build, and updates some of the build dependencies.</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Also...in order to build this package, another recipe needs modification.&n=
bsp; I have not created a patch file for this yet.&nbsp; I'm not sure it wo=
uld be appropriate as this library is kind of in limbo...but I did update t=
he recipe to download the latest version of the file:&nbsp; libcgi-perl_4=
=2E51.bb (OpenEmbedded &gt; meta-perl-recipes-perl/libcgi)</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
(Attached MD5: 0126F5119E9AA358C461ABC5BF777450)</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Basically this recipe downloads the latest version of the library as Webmin=
 depends on it.</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Hope these help.&nbsp; I will get patches made up and submitted soon.</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
-Joe</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
&nbsp;Warped Electronics</div>
</body></html>

--=_eb7fb60eb8fb984154ff2c2712916a30--

--=_ea29a91d8fad0d0b878614a75896a102
Content-Transfer-Encoding: base64
Content-Type: text/plain;
 name=libcgi-perl_4.51.bb
Content-Disposition: attachment;
 filename=libcgi-perl_4.51.bb;
 size=1440

REVTQ1JJUFRJT04gPSAiQ0dJLnBtIGlzIGEgc3RhYmxlLCBjb21wbGV0ZSBhbmQgbWF0dXJlIHNv
bHV0aW9uIGZvciBwcm9jZXNzaW5nIGFuZCBwcmVwYXJpbmcgXApIVFRQIHJlcXVlc3RzIGFuZCBy
ZXNwb25zZXMuIE1ham9yIGZlYXR1cmVzIGluY2x1ZGluZyBwcm9jZXNzaW5nIGZvcm0gXApzdWJt
aXNzaW9ucywgZmlsZSB1cGxvYWRzLCByZWFkaW5nIGFuZCB3cml0aW5nIGNvb2tpZXMsIHF1ZXJ5
IHN0cmluZyBnZW5lcmF0aW9uIFwKYW5kIG1hbmlwdWxhdGlvbiwgYW5kIHByb2Nlc3NpbmcgYW5k
IHByZXBhcmluZyBIVFRQIGhlYWRlcnMuIgpIT01FUEFHRSA9ICJodHRwczovL21ldGFjcGFuLm9y
Zy9wb2QvQ0dJIgpTRUNUSU9OID0gImxpYnMiCkxJQ0VOU0UgPSAiQXJ0aXN0aWMtMi4wIHwgR1BM
LTIuMCIKCkxJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovL0xJQ0VOU0U7bWQ1PTQxNWZjNDlhYmVk
MjcyOGY5NDgwY2QzMmM4ZDY3YmViIgoKU1JDX1VSSSA9ICJodHRwczovL2NwYW4ubWV0YWNwYW4u
b3JnL2F1dGhvcnMvaWQvTC9MRS9MRUVKTy9DR0ktJHtQVn0udGFyLmd6IgoKU1JDX1VSSVttZDVz
dW1dID0gIjg3YjZjZjViYzY4NzM5YzkzMTBjYTUwMWFkYWQ5OThlIgpTUkNfVVJJW3NoYTI1NnN1
bV0gPSAiMGJkMjE1ZTcwMTJmOWY1MmU2YTdkM2ZlNjk1ZWUzMGVmOTU5ZDc5NmU4ZTUzNDcyZmEw
ZWQ4YzUzZmJhNjAwYSIKClMgPSAiJHtXT1JLRElSfS9DR0ktJHtQVn0iCgppbmhlcml0IGNwYW4g
cHRlc3QtcGVybAoKUkRFUEVORFNfJHtQTn0gKz0gIlwKICAgIGxpYmh0bWwtcGFyc2VyLXBlcmwg
XAogICAgcGVybC1tb2R1bGUtYmFzZSBcCiAgICBwZXJsLW1vZHVsZS1kZXByZWNhdGUgXAogICAg
cGVybC1tb2R1bGUtaWYgXAoiCgpkb19pbnN0YWxsX3ByZXBlbmQoKSB7CiAgICAjIHJlcXVpcmVz
ICItVCIgKHRhaW50KSBjb21tYW5kIGxpbmUgb3B0aW9uCiAgICBybSAtcmYgJHtCfS90L3B1c2gu
dAogICAgcm0gLXJmICR7Qn0vdC91dGY4LnQKICAgICMgdGVzdHMgYnVpbGRpbmcgb2YgZG9jcwog
ICAgcm0gLXJmICR7Qn0vdC9jb21waWxlc19wb2QudAp9CgpSREVQRU5EU18ke1BOfS1wdGVzdCAr
PSAiIFwKICAgIGxpYnRlc3QtZGVlcC1wZXJsIFwKICAgIGxpYnRlc3Qtd2Fybi1wZXJsIFwKICAg
IHBlcmwtbW9kdWxlLWJ5dGVzIFwKICAgIHBlcmwtbW9kdWxlLWZpbGUtZmluZCBcCiAgICBwZXJs
LW1vZHVsZS1maWxlaGFuZGxlIFwKICAgIHBlcmwtbW9kdWxlLWZpbmRiaW4gXAogICAgcGVybC1t
b2R1bGUtbGliIFwKICAgIHBlcmwtbW9kdWxlLXBlcmxpbyBcCiAgICBwZXJsLW1vZHVsZS1wZXJs
aW8tc2NhbGFyIFwKICAgIHBlcmwtbW9kdWxlLXRlc3QtbW9yZSBcCiAgICBwZXJsLW1vZHVsZS11
dGY4IFwKIgoKUlBST1ZJREVTXyR7UE59ICs9ICJwZXJsLW1vZHVsZS1jZ2kiCgpCQkNMQVNTRVhU
RU5EID0gIm5hdGl2ZSIK

--=_ea29a91d8fad0d0b878614a75896a102
Content-Transfer-Encoding: base64
Content-Type: text/plain;
 name=webmin_1.962.bb
Content-Disposition: attachment;
 filename=webmin_1.962.bb;
 size=7580

U1VNTUFSWSA9ICJXZWItYmFzZWQgYWRtaW5pc3RyYXRpb24gaW50ZXJmYWNlIgpIT01FUEFHRSA9
ICJodHRwOi8vd3d3LndlYm1pbi5jb20iCkxJQ0VOU0UgPSAiQlNELTMtQ2xhdXNlIgpMSUNfRklM
RVNfQ0hLU1VNID0gImZpbGU6Ly9MSUNFTkNFO21kNT0wYTY0NDYxMDhjOTZkMDgxOWQyMWU0MGI0
ODEwOTUwNyIKClNSQ19VUkkgPSAiJHtTT1VSQ0VGT1JHRV9NSVJST1J9L3dlYmFkbWluL3dlYm1p
bi0ke1BWfS50YXIuZ3ogXAogICAgICAgICAgIGZpbGU6Ly9zZXR1cC5zaCBcCiAgICAgICAgICAg
ZmlsZTovL2luaXQtZXhjbHVkZS5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL3JlbW92ZS1zdGFy
dHVwLW9wdGlvbi5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL25mcy1leHBvcnQucGF0Y2ggXAog
ICAgICAgICAgIGZpbGU6Ly9leHBvcnRzLWxpYi5wbC5wYXRjaCBcCiAgICAgICAgICAgZmlsZTov
L21vdW50LWV4Y2x1ZGVmcy5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL3NhbWJhLWNvbmZpZy1m
aXgucGF0Y2ggXAogICAgICAgICAgIGZpbGU6Ly9wcm9mdHBkLWNvbmZpZy1maXgucGF0Y2ggXAog
ICAgICAgICAgIGZpbGU6Ly9tZWRpYS10b21iLnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vcmVt
b3ZlLXB5dGhvbjIuMy5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL215c3FsLWNvbmZpZy1maXgu
cGF0Y2ggXAogICAgICAgICAgIGZpbGU6Ly93ZWJtaW4uc2VydmljZSBcCiAgICAgICAgICAiCgpT
UkNfVVJJW21kNXN1bV0gPSAiZDc0ZDE0ZWU1NDY3ZmM5NWQyODNiMTU3OGIwZWY2MjIiClNSQ19V
Uklbc2hhMjU2c3VtXSA9ICIzNTc2NDJhZjlkNzUzNDM1ZTk5OWFkZmU0MDc3MmI5OThiZmNiMjE4
NTI5OTMwODEyMzk5NDhlOTIxNmJjNmZkIgoKVVBTVFJFQU1fQ0hFQ0tfVVJJID0gImh0dHA6Ly93
d3cud2VibWluLmNvbS9kb3dubG9hZC5odG1sIgpVUFNUUkVBTV9DSEVDS19SRUdFWCA9ICJ3ZWJt
aW4tKD9QPHB2ZXI+XGQrKFwuXGQrKSspLnRhci5neiIKCmluaGVyaXQgcGVybG5hdGl2ZSB1cGRh
dGUtcmMuZCBzeXN0ZW1kCgpkb19jb25maWd1cmUoKSB7CiAgICAjIFJlbW92ZSBiaW5hcmllcyBh
bmQgcGx1Z2lucyBmb3Igb3RoZXIgcGxhdGZvcm1zCiAgICBybSAtcmYgYWNsL0F1dGhlbi1Tb2xh
cmlzUkJBQy0wLjEqCiAgICBybSAtcmYgZm9ybWF0IGJzZGV4cG9ydHMgaHB1eGV4cG9ydHMgc2dp
ZXhwb3J0cwogICAgcm0gLXJmIHpvbmVzIHJiYWMgc21mIGlwZncgaXBmaWx0ZXIgZGZzYWRtaW4K
ICAgIHJtIC1mIG1vdW50L2ZyZWVic2QtbW91bnRzKiBtb3VudC9uZXRic2QtbW91bnRzKgogICAg
cm0gLWYgbW91bnQvb3BlbmJzZC1tb3VudHMqIG1vdW50L21hY29zLW1vdW50cyoKCiAgICAjIFJl
bW92ZSBzb21lIHBsdWdpbnMgZm9yIHRoZSBtb21lbnQKICAgIHJtIC1yZiBsaWxvIGZyb3ggd3Vm
dHBkIHRlbG5ldCBwc2VydmVyIGNwYW4gc2hvcmV3YWxsIHdlYmFsaXplciBjZmVuZ2luZSBmc2R1
bXAgcGFwCiAgICBybSAtcmYgbWFqb3Jkb21vIGZldGNobWFpbCBzZW5kbWFpbCBtYWlsYm94ZXMg
cHJvY21haWwgZmlsdGVyIG1haWxjYXAgZG92ZWNvdCBleGltIHNwYW0gcW1haWxhZG1pbiBwb3N0
Zml4CiAgICBybSAtcmYgc3R1bm5lbCBzcXVpZCBzYXJnIHBwdHAtY2xpZW50IHBwdHAtc2VydmVy
IGphYmJlciBvcGVuc2xwIHNlbnRyeSBjbHVzdGVyLSogdmdldHR5IGJ1cm5lciBoZWFydGJlYXQK
CiAgICAjIEFkanVzdCBjb25maWdzCiAgICBbIC1mIGluaXQvY29uZmlnLWRlYmlhbi1saW51eCBd
ICYmIG12IGluaXQvY29uZmlnLWRlYmlhbi1saW51eCBpbml0L2NvbmZpZy1nZW5lcmljLWxpbnV4
CiAgICBzZWQgLWkgInMvc2h1dGRvd25fY29tbWFuZD0uKi9zaHV0ZG93bl9jb21tYW5kPXBvd2Vy
b2ZmLyIgaW5pdC9jb25maWctZ2VuZXJpYy1saW51eAogICAgZWNobyAiZXhjbHVkZT1ib290bWlz
Yy5zaCxzaW5nbGUsaGFsdCxyZWJvb3QsaG9zdG5hbWUuc2gsbW9kdXRpbHMuc2gsbW91bnRhbGwu
c2gsbW91bnRuZnMuc2gsbmV0d29ya2luZyxwb3B1bGF0ZS12b2xhdGlsZS5zaCxybW5vbG9naW4u
c2gsc2F2ZS1ydGMuc2gsdW1vdW50ZnMsdW1vdW50bmZzLnNoLGh3Y2xvY2suc2gsY2hlY2tyb290
LnNoLGJhbm5lci5zaCx1ZGV2LHVkZXYtY2FjaGUsZGV2cHRzLnNoLHBzcGxhc2guc2gsc2VuZHNp
Z3MsZmJzZXR1cCxib290bG9nZCxzdG9wLWJvb3Rsb2dkLHN5c2ZzLnNoLHN5c2xvZyxzeXNsb2cu
YnVzeWJveCx1cmFuZG9tLHdlYm1pbixmdW5jdGlvbnMuaW5pdHNjcmlwdHMscmVhZC1vbmx5LXJv
b3Rmcy1ob29rLnNoIiA+PiBpbml0L2NvbmZpZy1nZW5lcmljLWxpbnV4CiAgICBlY2hvICJleGNs
dWRlZnM9ZGV2cHRzLGRldnRtcGZzLHVzYmRldmZzLHByb2MsdG1wZnMsc3lzZnMsZGVidWdmcyIg
Pj4gbW91bnQvY29uZmlnLWdlbmVyaWMtbGludXgKCiAgICBbIC1mIGV4cG9ydHMvY29uZmlnLWRl
Ymlhbi1saW51eCBdICYmIG12IGV4cG9ydHMvY29uZmlnLWRlYmlhbi1saW51eCBleHBvcnRzL2Nv
bmZpZy1nZW5lcmljLWxpbnV4CiAgICBzZWQgLWkgInMva2lsbGFsbCAtSFVQIHJwYy5uZnNkICYm
IC8vIiBleHBvcnRzL2NvbmZpZy1nZW5lcmljLWxpbnV4CiAgICBzZWQgLWkgInMvbmV0c3RkX25m
cy9uZnNzZXJ2ZXIvZyIgZXhwb3J0cy9jb25maWctZ2VuZXJpYy1saW51eAoKICAgICMgRml4IGlu
c2FuZSBuYW1pbmcgdGhhdCBjYXVzZXMgcHJvYmxlbXMgYXQgcGFja2FnaW5nIHRpbWUgKG11c3Qg
YmUgZG9uZSBiZWZvcmUgZGVsZXRpbmcgYmVsb3cpCiAgICBmaW5kIC4gLW5hbWUgIipcKioiIHwg
d2hpbGUgcmVhZCBmcm9tCiAgICBkbwogICAgICAgIHRvPWBlY2hvICIkZnJvbSIgfCBzZWQgInMv
Ki9BTEwvImAKICAgICAgICBtdiAiJGZyb20iICIkdG8iCiAgICBkb25lCgogICAgIyBSZW1vdmUg
c29tZSBvdGhlciBmaWxlcyB3ZSBkb24ndCBuZWVkCiAgICBmaW5kIC4gLW5hbWUgImNvbmZpZy0q
IiAtYSBcISAtbmFtZSAiY29uZmlnLWdlbmVyaWMtbGludXgiIC1hIFwhIC1uYW1lICJjb25maWct
QUxMLWxpbnV4IiAtYSBcISAtbmFtZSAiKi5wbCIgLWRlbGV0ZQogICAgZmluZCAuIC1yZWdleHR5
cGUgcG9zaXgtZXh0ZW5kZWQgLXJlZ2V4ICIuKi8ob3BlbnNlcnZlcnxhaXh8b3NmMXxvc2Z8b3Bl
bmJzZHxuZXRic2R8ZnJlZWJzZHx1bml4d2FyZXxzb2xhcmlzfG1hY29zfGlyaXh8aHB1eHxjeWd3
aW58d2luZG93cyktbGliXC5wbCIgLWRlbGV0ZQogICAgcm0gLWYgd2VibWluLWdlbnRvby1pbml0
IHdlYm1pbi1jYWxkZXJhLWluaXQgd2VibWluLWRlYmlhbi1wYW0gd2VibWluLXBhbQoKICAgICMg
RG9uJ3QgbmVlZCB0aGVzZSBhdCBydW50aW1lIChhbmQgd2UgaGF2ZSBvdXIgb3duIHNldHVwIHNj
cmlwdCkKICAgIHJtIC1mIHNldHVwLnNoCiAgICBybSAtZiBzZXR1cC5wbAoKICAgICMgVXNlIHBp
ZG9mIGZvciBmaW5kaW5nIFBJRHMKICAgIHNlZCAtaSAicy9maW5kX3BpZF9jb21tYW5kPS4qL2Zp
bmRfcGlkX2NvbW1hbmQ9cGlkb2YgTkFNRS8iIGNvbmZpZy1nZW5lcmljLWxpbnV4Cn0KCldFQk1J
Tl9MT0dJTiA/PSAiYWRtaW4iCldFQk1JTl9QQVNTV09SRCA/PSAicGFzc3dvcmQiCgpkb19pbnN0
YWxsKCkgewogICAgaW5zdGFsbCAtZCAke0R9JHtzeXNjb25mZGlyfQogICAgaW5zdGFsbCAtZCAk
e0R9JHtzeXNjb25mZGlyfS93ZWJtaW4KICAgIGluc3RhbGwgLWQgJHtEfSR7c3lzY29uZmRpcn0v
aW5pdC5kCiAgICBpbnN0YWxsIC1tIDA3NTUgd2VibWluLWluaXQgJHtEfSR7c3lzY29uZmRpcn0v
aW5pdC5kL3dlYm1pbgoKICAgIGluc3RhbGwgLWQgJHtEfSR7c3lzdGVtZF91bml0ZGlyfS9zeXN0
ZW0KICAgIGluc3RhbGwgLW0gMDY0NCAke1dPUktESVJ9L3dlYm1pbi5zZXJ2aWNlICR7RH0ke3N5
c3RlbWRfdW5pdGRpcn0vc3lzdGVtCiAgICBzZWQgLWkgLWUgJ3MsQFNZU0NPTkZESVJALCR7c3lz
Y29uZmRpcn0sZycgXAogICAgICAgICAgICR7RH0ke3N5c3RlbWRfdW5pdGRpcn0vc3lzdGVtL3dl
Ym1pbi5zZXJ2aWNlCgogICAgaW5zdGFsbCAtZCAke0R9JHtsb2NhbHN0YXRlZGlyfQogICAgaW5z
dGFsbCAtZCAke0R9JHtsb2NhbHN0YXRlZGlyfS93ZWJtaW4KCiAgICBpbnN0YWxsIC1kICR7RH0k
e2xpYmV4ZWNkaXJ9L3dlYm1pbgogICAgY2QgJHtTfSB8fCBleGl0IDEKICAgIHRhciAtLW5vLXNh
bWUtb3duZXIgLS1leGNsdWRlPScuL3BhdGNoZXMnIC0tZXhjbHVkZT0nLi8ucGMnIC1jcGYgLSAu
IFwKICAgICAgICB8IHRhciAtLW5vLXNhbWUtb3duZXIgLXhwZiAtIC1DICR7RH0ke2xpYmV4ZWNk
aXJ9L3dlYm1pbgoKICAgIHJtIC1mICR7RH0ke2xpYmV4ZWNkaXJ9L3dlYm1pbi93ZWJtaW4taW5p
dAogICAgcm0gLWYgJHtEfSR7bGliZXhlY2Rpcn0vd2VibWluL2FqYXh0ZXJtL2FqYXh0ZXJtL2Nv
bmZpZ3VyZS5pbml0ZC5nZW50b28KICAgIHJtIC1yZiAke0R9JHtsaWJleGVjZGlyfS93ZWJtaW4v
cGF0Y2hlcwoKICAgICMgUnVuIHNldHVwIHNjcmlwdAogICAgZXhwb3J0IHBlcmw9cGVybAogICAg
ZXhwb3J0IHBlcmxfcnVudGltZT0ke2JpbmRpcn0vcGVybAogICAgZXhwb3J0IHByZWZpeD0ke0R9
CiAgICBleHBvcnQgdGVtcGRpcj0ke1N9L2luc3RhbGxfdG1wCiAgICBleHBvcnQgd2FkaXI9JHts
aWJleGVjZGlyfS93ZWJtaW4KICAgIGV4cG9ydCBjb25maWdfZGlyPSR7c3lzY29uZmRpcn0vd2Vi
bWluCiAgICBleHBvcnQgdmFyX2Rpcj0ke2xvY2Fsc3RhdGVkaXJ9L3dlYm1pbgogICAgZXhwb3J0
IG9zX3R5cGU9Z2VuZXJpYy1saW51eAogICAgZXhwb3J0IG9zX3ZlcnNpb249MAogICAgZXhwb3J0
IHJlYWxfb3NfdHlwZT0iJHtESVNUUk9fTkFNRX0iCiAgICBleHBvcnQgcmVhbF9vc192ZXJzaW9u
PSIke0RJU1RST19WRVJTSU9OfSIKICAgIGV4cG9ydCBwb3J0PTEwMDAwCiAgICBleHBvcnQgbG9n
aW49JHtXRUJNSU5fTE9HSU59CiAgICBleHBvcnQgcGFzc3dvcmQ9JHtXRUJNSU5fUEFTU1dPUkR9
CiAgICBleHBvcnQgc3NsPTAKICAgIGV4cG9ydCBhdGJvb3Q9MQogICAgZXhwb3J0IG5vX3BhbT0x
CiAgICBta2RpciAtcCAkdGVtcGRpcgogICAgJHtTfS8uLi9zZXR1cC5zaAoKICAgICMgRW5zdXJl
IGNvcnJlY3QgUEVSTExJQiBwYXRoCiAgICBzZWQgLWkgLWUgJ3MjJHtEfSMjZycgJHtEfSR7c3lz
Y29uZmRpcn0vd2VibWluL3N0YXJ0Cn0KCklOSVRTQ1JJUFRfTkFNRSA9ICJ3ZWJtaW4iCklOSVRT
Q1JJUFRfUEFSQU1TID0gInN0YXJ0IDk5IDUgMyAyIC4gc3RvcCAxMCAwIDEgNiAuIgoKU1lTVEVN
RF9TRVJWSUNFXyR7UE59ID0gIndlYm1pbi5zZXJ2aWNlIgpTWVNURU1EX0FVVE9fRU5BQkxFXyR7
UE59ID0gImVuYWJsZSIKCiMtIE1vZHVsZXMgd2Ugd2FudCB0byBpbnN0YWxsIGluaXRpYWxseQpQ
QUNLQUdFUyArPSAiJHtQTn0tbW9kdWxlLWFjbCAke1BOfS1tb2R1bGUtYmFja3VwLWNvbmZpZyAk
e1BOfS1tb2R1bGUtY2VydG1nciAke1BOfS1tb2R1bGUtY2hhbmdlLXVzZXIgJHtQTn0tbW9kdWxl
LWNwYW4gJHtQTn0tbW9kdWxlLWNyb24gIgpQQUNLQUdFUyArPSAiJHtQTn0tbW9kdWxlLW5ldCAk
e1BOfS1tb2R1bGUtcGFzc3dkICR7UE59LW1vZHVsZS1wcm9jICR7UE59LW1vZHVsZS1zaGVsbCAk
e1BOfS1tb2R1bGUtc3RhdHVzICR7UE59LW1vZHVsZS1zeXN0ZW0tc3RhdHVzICIKUEFDS0FHRVMg
Kz0gIiR7UE59LW1vZHVsZS11c2VyYWRtaW4gJHtQTn0tbW9kdWxlLXdlYm1pbiAke1BOfS10aGVt
ZS1hdXRoZW50aWMtdGhlbWUgJHtQTn0tdGhlbWUtYmx1ZS10aGVtZSAke1BOfS10aGVtZS1ncmF5
LXRoZW1lIgoKIy0gS25vd24gUGVybCBtb2R1bGVzIHJlcXVyZWQgZm9yIFdlYm1pbiBhbmQgaW5z
dGFsbGVkIG1vZHVsZXMKUkRFUEVORFNfJHtQTn0gKz0gInBlcmwgcGVybC1tb2R1bGUtc29ja2V0
IHBlcmwtbW9kdWxlLWV4cG9ydGVyIHBlcmwtbW9kdWxlLWV4cG9ydGVyLWhlYXZ5IHBlcmwtbW9k
dWxlLWNhcnAgcGVybC1tb2R1bGUtc3RyaWN0IHBlcmwtbW9kdWxlLXdhcm5pbmdzIgpSREVQRU5E
U18ke1BOfSArPSAicGVybC1tb2R1bGUteHNsb2FkZXIgcGVybC1tb2R1bGUtcG9zaXggcGVybC1t
b2R1bGUtYXV0b2xvYWRlciBwZXJsLW1vZHVsZS1mY250bCBwZXJsLW1vZHVsZS10aWUtaGFzaCBw
ZXJsLW1vZHVsZS12YXJzIHBlcmwtbW9kdWxlLWNnaSIKUkRFUEVORFNfJHtQTn0gKz0gInBlcmwt
bW9kdWxlLXRpbWUtbG9jYWwgcGVybC1tb2R1bGUtY29uZmlnIHBlcmwtbW9kdWxlLWNvbnN0YW50
IHBlcmwtbW9kdWxlLWZpbGUtZ2xvYiBwZXJsLW1vZHVsZS1maWxlLWNvcHkgcGVybC1tb2R1bGUt
c2RibS1maWxlIgpSREVQRU5EU18ke1BOfSArPSAicGVybC1tb2R1bGUtZmVhdHVyZSBwZXJsLW1v
ZHVsZS1maWxlLWJhc2VuYW1lIHBlcmwtbW9kdWxlLWZpbGUtcGF0aCBwZXJsLW1vZHVsZS1jd2Qg
cGVybC1tb2R1bGUtZmlsZS1zcGVjIHBlcmwtbW9kdWxlLWZpbGUtc3BlYy11bml4IiAKCiMtIEtu
b3duIExpbnV4IHJlcXVpcmVtZW50c2Ygb3IgV2VibWluIE1vZHVsZXMKUkRFUEVORFNfJHtQTn0t
bW9kdWxlLXByb2MgPSAicHJvY3BzIgoKIy0gQWRkaXRpb25hbCByZXF1aXJlbWVudHMKREVQRU5E
UyArPSAibGlibmV0LXNzbGVheS1wZXJsIGxpYmNnaS1wZXJsIG9wZW5zc2wiClBBQ0tBR0VTX0RZ
TkFNSUMgKz0gIndlYm1pbi1tb2R1bGUtKiB3ZWJtaW4tdGhlbWUtKiIKUlJFQ09NTUVORFNfJHtQ
Tn0gKz0gIndlYm1pbi1tb2R1bGUtc3lzdGVtLXN0YXR1cyIKCnB5dGhvbiBwb3B1bGF0ZV9wYWNr
YWdlc19wcmVwZW5kKCkgewogICAgaW1wb3J0IG9zLCBvcy5wYXRoCgogICAgd2FkaXIgPSBiYi5k
YXRhLmV4cGFuZCgnJHtsaWJleGVjZGlyfS93ZWJtaW4nLCBkKQogICAgd2FkaXJfaW1hZ2UgPSBi
Yi5kYXRhLmV4cGFuZCgnJHtEfScsIGQpICsgd2FkaXIKICAgIG1vZHVsZXMgPSBbXQogICAgdGhl
bWVzID0gW10KICAgIGZvciBtb2QgaW4gb3MubGlzdGRpcih3YWRpcl9pbWFnZSk6CiAgICAgICAg
bW9kaW5mbyA9IG9zLnBhdGguam9pbih3YWRpcl9pbWFnZSwgbW9kLCAibW9kdWxlLmluZm8iKQog
ICAgICAgIHRoZW1laW5mbyA9IG9zLnBhdGguam9pbih3YWRpcl9pbWFnZSwgbW9kLCAidGhlbWUu
aW5mbyIpCiAgICAgICAgaWYgb3MucGF0aC5leGlzdHMobW9kaW5mbyk6CiAgICAgICAgICAgIG1v
ZHVsZXMuYXBwZW5kKG1vZCkKICAgICAgICBlbGlmIG9zLnBhdGguZXhpc3RzKHRoZW1laW5mbyk6
CiAgICAgICAgICAgIHRoZW1lcy5hcHBlbmQobW9kKQoKICAgIGRvX3NwbGl0X3BhY2thZ2VzKGQs
IHdhZGlyLCAnXiglcykkJyAlICJ8Ii5qb2luKG1vZHVsZXMpLCAnd2VibWluLW1vZHVsZS0lcycs
ICdXZWJtaW4gbW9kdWxlIGZvciAlcycsIGV4dHJhX2RlcGVuZHM9J3BlcmwnLCBhbGxvd19kaXJz
PVRydWUsIHByZXBlbmQ9VHJ1ZSkKICAgIGRvX3NwbGl0X3BhY2thZ2VzKGQsIHdhZGlyLCAnXigl
cykkJyAlICJ8Ii5qb2luKHRoZW1lcyksICd3ZWJtaW4tdGhlbWUtJXMnLCAnV2VibWluIHRoZW1l
IGZvciAlcycsIGV4dHJhX2RlcGVuZHM9J3BlcmwnLCBhbGxvd19kaXJzPVRydWUsIHByZXBlbmQ9
VHJ1ZSkKfQoKIyBUaW1lLXNhdmVycwpwYWNrYWdlX2RvX3BrZ2NvbmZpZygpIHsKICAgIDoKfQo=

--=_ea29a91d8fad0d0b878614a75896a102--
