Received: from smtpcmd0986.aruba.it (smtpcmd0986.aruba.it [62.149.156.86])
 by mx.groups.io with SMTP id smtpd.web10.31408.1606116851746533658
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Nov 2020 23:34:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=n8cBquzJ;
 spf=none, err=SPF record not found (domain: edalab.it, ip: 62.149.156.86, mailfrom: matteo.iervasi@edalab.it)
Received: from [192.168.252.10] ([5.88.39.42])
	by Aruba Outgoing Smtp  with ESMTPA
	id h6MQkDDXoAfw1h6MQkgsEw; Mon, 23 Nov 2020 08:34:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1606116849; bh=oZlaLZzBcKkep0HyAHo+A8Oq0wvwAqsrNs5DaIZquzY=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=n8cBquzJG0SU/Q5HH9ZaRDQI4wOjOzsg8rFDFD9PYXMEDYh+5/V0DKCrChy7fSamk
	 K8IYPyEeXrujZE6eylnjzQ0X2z9lhdUzz4U1h7ofLFw9Hb2T1ib+zU1+5DAjd0wPF9
	 2mH2gnBvbe9kajHaJhPEIAkHJi2n/CEvOPkkV0WkvIQSiAMmeSuAIhcfAiveGIk8Pz
	 keablYHB7mZiMnf7wJZzn0huj4e9ksgnNgfEHEwjp5/zFN0UBnlPFmnwJem6vEPIMy
	 3D/TBv+imyF5hU//3HEzhyX69C/WEqC69DwAq2tvnwW+x//zeqcOzMwJA3GyKNNA56
	 ostW+BkFQbLKw==
To: yocto@lists.yoctoproject.org
From: "Matteo Iervasi" <matteo.iervasi@edalab.it>
Subject: Problem with recipe that depends on a binary that is generated during its build
Message-ID: <fc5a5e16-61ad-d9c0-92c8-87714d040f95@edalab.it>
Date: Mon, 23 Nov 2020 08:34:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfCMr15jKpmzP6cpQjpPBhpOC7SuNknI2bhXSA7VBrv4OWBT/Uhnsg8rsx34oKyNSZzdJh6TDYVMNWYkfAJVQXe4Nz/QgrMp4EcSa1/8dRlXl999S3Sd6
 C+b3Wma4ARZFLxqjDM7YxHqgYSXbef4O6PQ0J9bZfb/gVlVTjaXXWAGpQkoCFoY0MYBXmAU5Gj2mwA==
X-Groupsio-MsgNum: 51525
Content-Type: multipart/mixed;
 boundary="------------FBD8EC6F533D2D241FC7F677"
Content-Language: en-US

--------------FBD8EC6F533D2D241FC7F677
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#ffffff">
    <p>Hi!</p>
    <p>I'm trying to integrate the Icinga
      (<a class="moz-txt-link-freetext" href="https://github.com/Icinga/icinga2">https://github.com/Icinga/icinga2</a>) in our Yocto project. As there
      are no ready recipes for it, I'm trying to write my own, starting
      from the one used for Nagios which is the original project Icinga
      forked from.<br>
      Icinga uses CMake for the compile process. Problem is that the
      compilation relies on two binaries, mkclass and mkunity, that get
      built by the process itself and obviously the compilation stops
      because those commands cannot be found.</p>
    <p>Searching the web I found only this hint in the Technical FAQ
<a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Technical_FAQ#I_have_some_software_which_needs_to_build_a_binary_that_it_then_runs_as_part_of_its_own_build_process.2C_how_do_I_make_this_work.3F">https://wiki.yoctoproject.org/wiki/Technical_FAQ#I_have_some_software_which_needs_to_build_a_binary_that_it_then_runs_as_part_of_its_own_build_process.2C_how_do_I_make_this_work.3F</a>,
      but the problem is still there.</p>
    <p>How can I get around this?</p>
    <p><br>
      Best regards<br>
      Matteo Iervasi<br>
    </p>
  </body>
</html>

--------------FBD8EC6F533D2D241FC7F677
Content-Type: text/plain; charset=UTF-8;
 name="icinga-core_2.12.0.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="icinga-core_2.12.0.bb"

cmVxdWlyZSBpY2luZ2EtY29tbW9uLmluYwoKREVTQ1JJUFRJT04gPSAiQSBob3N0L3NlcnZpY2Uv
bmV0d29yayBtb25pdG9yaW5nIGFuZCBtYW5hZ2VtZW50IHN5c3RlbSBjb3JlIGZpbGVzIgpIT01F
UEFHRSA9ICJodHRwczovL2ljaW5nYS5jb20iClNFQ1RJT04gPSAiY29uc29sZS9uZXR3b3JrIgpQ
UklPUklUWSA9ICJvcHRpb25hbCIKTElDRU5TRSA9ICJDTE9TRUQiCgpMSUNfRklMRVNfQ0hLU1VN
ID0gImZpbGU6Ly9DT1BZSU5HO21kNT1iMjM0ZWU0ZDY5ZjVmY2U0NDg2YTgwZmRhZjRhNDI2MyIK
ClNSQ05BTUUgPSAiaWNpbmdhMiIKClNSQ19VUkkgPSAiaHR0cHM6Ly9naXRodWIuY29tL0ljaW5n
YS9pY2luZ2EyL2FyY2hpdmUvdiR7UFZ9LnRhci5neiBcCiAgICAgICAgICAgZmlsZTovL3ZvbGF0
aWxlcyBcCiAgICAgICAgICAgZmlsZTovL2ljaW5nYS1jb3JlLnNlcnZpY2UgXAogICAgICAgICAg
IGZpbGU6Ly9pY2luZ2EtY29yZS1zeXN0ZW1kLXZvbGF0aWxlLmNvbmYgXAogICAgICAgICAgICIK
ClNSQ19VUklbbWQ1c3VtXSA9ICI5YjVkYjQ1YWViY2RiNmY1YTVjYzNiMGZhYTdhOGIwNSIKU1JD
X1VSSVtzaGEyNTZzdW1dID0gIjQ3YjQwOTc1NWRlZDI3NTJhMTNjM2Y1ZmQ2MmRhYjA0MTFjM2Ux
MDY5NjUzYjNjMDk5ZTgyNzY1MjhkOTZmN2MiCgpTID0gIiR7V09SS0RJUn0vJHtTUkNOQU1FfS0k
e1BWfSIKCkJCQ0xBU1NFWFRFTkQgKz0gIm5hdGl2ZSIKCmluaGVyaXQgcGtnY29uZmlnIGNtYWtl
IHVwZGF0ZS1yYy5kIHN5c3RlbWQgdXBkYXRlLWFsdGVybmF0aXZlcwoKI0RFUEVORFMgPSAiYmlz
b24gZmxleCBnZCB1bnppcC1uYXRpdmUgYm9vc3QgbGliY29uZmlnIG9wZW5zc2wgc3lzdGVtZCIK
CkRFUEVORFMgPSAiaWNpbmdhLWNvcmUtbmF0aXZlIgpERVBFTkRTX2NsYXNzLXRhcmdldCA9ICJi
aXNvbiBmbGV4IGJvb3N0IgoKUkRFUEVORFNfJHtQTn0gKz0gIlwKICAgIGJpc29uIFwKICAgIGZs
ZXggXAogICAgZ2QgXAogICAgbGlicG5nIFwKICAgIGZvbnRjb25maWcgXAogICAgYXBhY2hlMiBc
CiAgICBwaHAgXAogICAgb3BlbnNzbCBcCiAgICBib29zdCBcCiAgICBzeXN0ZW1kIFwKIgoKYWNw
YXRocyA9ICItSSAke1N9L2F1dG9jb25mLW1hY3JvcyIKCiMgU2V0IGRlZmF1bHQgcGFzc3dvcmQg
Zm9yIHRoZSBoYXJkY29kZWQgSWNpbmdhIGFkbWluIHVzZXIgImljaW5nYWFkbWluIi4KIyBJZiB0
aGlzIHZhcmlhYmxlIGlzIGVtcHR5IHRoZW4gd2lsbCBwcm9tcHQgdXNlciBmb3IgcGFzc3dvcmQu
CklDSU5HQV9ERUZBVUxUX0FETUlOVVNFUl9QQVNTV09SRCA/Pz0gInBhc3N3b3JkIgpJQ0lOR0Ff
Q0dJQklOX0RJUiA9ICIke2xpYmRpcn0vaWNpbmdhL2NnaS1iaW4iCgpFWFRSQV9PRUNPTkYgKz0g
Ii0tc2JpbmRpcj0ke0lDSU5HQV9DR0lCSU5fRElSfSBcCiAgICAgICAgICAgICAgICAgLS1kYXRh
ZGlyPSR7ZGF0YWRpcn0vaWNpbmdhL2h0ZG9jcyBcCiAgICAgICAgICAgICAgICAgLS13aXRoLWNv
bW1hbmQtZ3JvdXA9bmFnY21kIFwKICAgICAgICAgICAgICAgICAtLXdpdGgtaHR0cGQtY29uZj0k
e3N5c2NvbmZkaXJ9L2FwYWNoZTIvY29uZi5kIFwKICAgICAgICAgICAgICAgICAtLXdpdGgtbG9j
a2ZpbGU9JHtsb2NhbHN0YXRlZGlyfS9ydW4vaWNpbmdhL2ljaW5nYS5waWQgXAogICAgICAgICAg
ICAgICAgIC0td2l0aC1pbml0LWRpcj0ke3N5c2NvbmZkaXJ9L2luaXQuZCBcCiIKCiMgUHJldmVu
dCBpY2luZ2EgZnJvbSBzdHJpcHBpbmcgYmluYXJpZXMsIGJpdGJha2Ugd2lsbCB0YWtlIGNhcmUg
b2YgdGhhdApFWFRSQV9PRUNPTkYgKz0gImFjX2N2X3BhdGhfU1RSSVA9dHJ1ZSIKCiMgUHJldmVu
dCBpY2luZ2EgZnJvbSB1c2luZyBkeW5hbWljIGxpYnRvb2wgbGlicmFyeQpFWFRSQV9PRUNPTkYg
Kz0gImFjX2N2X2hlYWRlcl9sdGRsX2g9bm8iCgojIFByZXZlbnQgaWNpbmdhIGZyb20gc3VmZmVy
aW5nIGhvc3QgY29udGFtaW5hdGlvbiBpZiBob3N0IGhhcyAvYmluL3BlcmwKRVhUUkFfT0VDT05G
ICs9ICJhY19jdl9wYXRoX1BFUkw9JHtiaW5kaXJ9L3BlcmwiCgojIEZpeCBidWlsZCBmYWlsdXJl
IGZvciBnY2MtMTAKQ0ZMQUdTX2FwcGVuZCA9ICIgLWZjb21tb24iCgojIFNldCB0byAiMSIgdG8g
YWxsb3cgaWNpbmdhLWNvcmUgcG9zdC1pbml0IHRvIG1vZGlmeSBBcGFjaGUgY29uZmlndXJhdGlv
bgpJQ0lOR0FfTU9ESUZZX0FQQUNIRSA/Pz0gIjEiCgojIGRvX2NvbmZpZ3VyZV9wcmVwZW5kKCkg
ewojIHJlbmFtZSB0aGVzZSBtYWNyb3MgdG8gaGF2ZSAubTQgc3VmZml4IHNvIHRoYXQgYXV0b3Jl
Y29uZiBjb3VsZCByZWNvZ25pemUgdGhlbQojIGZvciBtYWNybyBpbiBgbHMgJHtTfS9hdXRvY29u
Zi1tYWNyb3MvYXhfaWNpbmdhX2dldF8qYDsgZG8KIyAJbXYgJG1hY3JvICRtYWNyby5tNAojIGRv
bmUKIyB9CgoKZG9fY29tcGlsZSgpIHsKCW9lX3J1bm1ha2UgbWtjbGFzcwoKICAgIG9lX3J1bm1h
a2UgYWxsCn0KCgpkb19pbnN0YWxsKCkgewogICAgb2VfcnVubWFrZSAnREVTVERJUj0ke0R9JyBp
bnN0YWxsCiAgICBvZV9ydW5tYWtlICdERVNURElSPSR7RH0nIGluc3RhbGwtaW5pdAogICAgb2Vf
cnVubWFrZSAnREVTVERJUj0ke0R9JyBpbnN0YWxsLWNvbmZpZwogICAgb2VfcnVubWFrZSAnREVT
VERJUj0ke0R9JyBpbnN0YWxsLWNvbW1hbmRtb2RlCgogICAgaW5zdGFsbCAtZCAke0R9JHtzeXNj
b25mZGlyfS9hcGFjaGUyL2NvbmYuZAogICAgb2VfcnVubWFrZSAnREVTVERJUj0ke0R9JyBpbnN0
YWxsLXdlYmNvbmYKCiAgICBpbnN0YWxsIC1kICR7RH0ke0lDSU5HQV9QTFVHSU5fQ09ORl9ESVJ9
CgogICAgIyBUaGVyZSBpcyBubyBpbnN0YWxsIHRhcmdldCBmb3IgdGhlIGNvbnRyaWJ1dGVkIGV2
ZW50aGFuZGxlcnMgc28gd2UKICAgICMganVzdCBkbyBpdC4KICAgIGluc3RhbGwgLWQgJHtEfSR7
SUNJTkdBX1BMVUdJTl9ESVJ9L2V2ZW50aGFuZGxlcnMKICAgIGZvciBmIGluICR7U30vY29udHJp
Yi9ldmVudGhhbmRsZXJzLyogOyBkbwogICAgICAgIGlmICEgWyAtZiAkZiBdIDsgdGhlbgogICAg
ICAgICAgICBjb250aW51ZTsKICAgICAgICBmaQogICAgICAgIGluc3RhbGwgJGYgJHtEfSR7SUNJ
TkdBX1BMVUdJTl9ESVJ9L2V2ZW50aGFuZGxlcnMvCiAgICBkb25lCgogICAgZWNobyAiY2ZnX2Rp
cj0ke0lDSU5HQV9QTFVHSU5fQ09ORl9ESVJ9IiA+PiAke0R9JHtJQ0lOR0FfQ09ORl9ESVJ9L2lj
aW5nYS5jZmcKCiAgICBpZiAke0BiYi51dGlscy5jb250YWlucygnRElTVFJPX0ZFQVRVUkVTJywg
J3N5c3RlbWQnLCAndHJ1ZScsICdmYWxzZScsIGQpfTsgdGhlbgogICAgICAgIGluc3RhbGwgLWQg
JHtEfSR7c3lzdGVtZF91bml0ZGlyfS9zeXN0ZW0KICAgICAgICBpbnN0YWxsIC1tIDY0NCAke1dP
UktESVJ9L2ljaW5nYS1jb3JlLnNlcnZpY2UgJHtEfSR7c3lzdGVtZF91bml0ZGlyfS9zeXN0ZW0v
CiAgICAgICAgIyB1c2Ugb3VyIG93biBzZXJ2aWNlIGZpbGUKICAgICAgICBybSAtZiAke0R9JHtz
eXN0ZW1kX3VuaXRkaXJ9L3N5c3RlbS9pY2luZ2Euc2VydmljZQogICAgICAgIGluc3RhbGwgLWQg
JHtEfSR7c3lzY29uZmRpcn0vdG1wZmlsZXMuZAogICAgICAgIGluc3RhbGwgLW0gNzU1ICR7V09S
S0RJUn0vaWNpbmdhLWNvcmUtc3lzdGVtZC12b2xhdGlsZS5jb25mICR7RH0ke3N5c2NvbmZkaXJ9
L3RtcGZpbGVzLmQvaWNpbmdhLWNvcmUtdm9sYXRpbGUuY29uZgogICAgZWxzZQogICAgICAgIGlu
c3RhbGwgLWQgJHtEfSR7c3lzY29uZmRpcn0vZGVmYXVsdC92b2xhdGlsZXMKICAgICAgICBpbnN0
YWxsIC1tIDA2NDQgJHtXT1JLRElSfS92b2xhdGlsZXMgJHtEfSR7c3lzY29uZmRpcn0vZGVmYXVs
dC92b2xhdGlsZXMvOTlfaWNpbmdhCiAgICBmaQp9Cgpwa2dfcG9zdGluc3Rfb250YXJnZXRfJHtQ
Tn0tc2V0dXAgKCkgewogICAgIyBTZXQgcGFzc3dvcmQgZm9yIGljaW5nYWFkbWluIHVzZXIKICAg
IGlmIFsgLXogIiR7SUNJTkdBX0RFRkFVTFRfQURNSU5VU0VSX1BBU1NXT1JEfSIgXTsgdGhlbgog
ICAgICAgIGh0cGFzc3dkIC1jICR7SUNJTkdBX0NPTkZfRElSfS9odHBhc3N3ZC51c2VycyBpY2lu
Z2FhZG1pbgogICAgZWxzZQogICAgICAgIGh0cGFzc3dkIC1iIC1jICR7SUNJTkdBX0NPTkZfRElS
fS9odHBhc3N3ZC51c2VycyBpY2luZ2FhZG1pbiBcCiAgICAgICAgICAgIiR7SUNJTkdBX0RFRkFV
TFRfQURNSU5VU0VSX1BBU1NXT1JEfSIKICAgIGZpCgogICAgIyBBcGFjaGUyIG1pZ2h0IGJ5IGRl
ZmF1bHQgdHVybiBvZmYgQ0dJCiAgICBpZiBbICIke0lDSU5HQV9NT0RJRllfQVBBQ0hFfSIgPT0g
IjEiIF0gJiYgWyAtZiAiJHtzeXNjb25mZGlyfS9hcGFjaGUyL2h0dHBkLmNvbmYiIF07IHRoZW4K
ICAgICAgICBzZWQgLWUgJ3MvXiNMb2FkTW9kdWxlIGNnaWRfbW9kdWxlL0xvYWRNb2R1bGUgY2dp
ZF9tb2R1bGUvZycgLWkgJHtzeXNjb25mZGlyfS9hcGFjaGUyL2h0dHBkLmNvbmYKICAgIGZpCn0K
ClBBQ0tBR0VTICs9ICIke1NSQ05BTUV9LWJhc2UgJHtQTn0tc2V0dXAiCgpGSUxFU18ke1BOfSAr
PSAiJHtkYXRhZGlyfSBcCiAgICAgICAgICAgICAgICAke0lDSU5HQV9QTFVHSU5fRElSfSBcCiAg
ICAgICAgICAgICAgICAke0lDSU5HQV9DR0lCSU5fRElSfSBcCiIKCkZJTEVTXyR7UE59LWRiZyAr
PSAiJHtJQ0lOR0FfQ0dJQklOX0RJUn0vLmRlYnVnIgoKQUxMT1dfRU1QVFlfJHtTUkNOQU1FfS1i
YXNlID0gIjEiCkFMTE9XX0VNUFRZXyR7UE59LXNldHVwID0gIjEiCgpTWVNURU1EX1BBQ0tBR0VT
ID0gIiR7UE59IgpTWVNURU1EX1NFUlZJQ0VfJHtQTn0gPSAiaWNpbmdhLWNvcmUuc2VydmljZSIK
U1lTVEVNRF9BVVRPX0VOQUJMRV8ke1BOfSA9ICJlbmFibGUiCgpVU0VSQUREX1BBQ0tBR0VTICs9
ICIke1NSQ05BTUV9LWJhc2UiCkdST1VQQUREX1BBUkFNXyR7U1JDTkFNRX0tYmFzZSA9ICItciAk
e0lDSU5HQV9HUk9VUH0iClVTRVJBRERfUEFSQU1fJHtTUkNOQU1FfS1iYXNlID0gIi1yIC1NIC1n
ICR7SUNJTkdBX0dST1VQfSAke0lDSU5HQV9VU0VSfSIKCklOSVRTQ1JJUFRfTkFNRSA9ICJpY2lu
Z2EiCklOSVRTQ1JJUFRfUEFSQU1TID0gImRlZmF1bHRzIgoKQ1ZFX1BST0RVQ1QgPSAiaWNpbmdh
X2NvcmUiCgpBTFRFUk5BVElWRV9QUklPUklUWV8ke1BOfSA9ICcyMCcKQUxURVJOQVRJVkVfJHtQ
Tn0gPSAiaWNpbmdhIgpBTFRFUk5BVElWRV9MSU5LX05BTUVbaWNpbmdhXSA9ICIke2xvY2Fsc3Rh
dGVkaXJ9L2ljaW5nYSI=

--------------FBD8EC6F533D2D241FC7F677--
