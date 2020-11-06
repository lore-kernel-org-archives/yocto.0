Subject: I am compiling scikit-learn python package for arm board but I am facing some errors. #python
To: yocto@lists.yoctoproject.org
From: william.jacob@sama.com.sg
X-Originating-Location: Kottayam, Kerala, IN (117.206.44.53)
X-Originating-Platform: Linux Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 06 Nov 2020 02:06:45 -0800
Message-ID: <BywH.1604657205718354370.pcI9@lists.yoctoproject.org>
X-Groupsio-MsgNum: 51290
Content-Type: multipart/mixed; boundary="JFL4ENCZvwYUL7aiNWsu"

--JFL4ENCZvwYUL7aiNWsu
Content-Type: multipart/alternative; boundary="IX2s7VdcGI4rqKILcpJx"

--IX2s7VdcGI4rqKILcpJx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am compiling scikit-learn python package for arm=C2=A0 board but I am fa=
cing below errors

william@william:~/sagitta/build-as371$ bitbake python3-scikit-learn
Loading cache: 100% |#####################################################=
###########################################################################=
##########################| Time: 0:00:01
Loaded 3665 entries from dependency cache.
Parsing recipes: 100% |###################################################=
###########################################################################=
##########################| Time: 0:00:07
Parsing of 2414 .bb files complete (2403 cached, 11 parsed). 3605 targets,=
 374 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'lapack-native' (but virtual:native:/home/william/=
sagitta/meta/recipes-devtools/python-scipy/python3-scipy_1.5.2.bb DEPENDS o=
n or otherwise requires it). Close matches:
tclap-native
lua-native
atk-native
ERROR: Required build target 'python3-scikit-learn' has no buildable provi=
ders.
Missing or unbuildable dependency chain was: ['python3-scikit-learn', 'pyt=
hon3-scipy-native', 'lapack-native']

It seems lapack is not compiled native because of it I am facing the issue

Thanks
William Jacob

--IX2s7VdcGI4rqKILcpJx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>I am compiling scikit-learn python package for arm&nbsp; board but I =
am facing below errors</div>
<div>&nbsp;</div>
<div><em>william@william:~/sagitta/build-as371$ bitbake python3-scikit-lea=
rn</em></div>
<div><em>Loading cache: 100% |############################################=
###########################################################################=
###################################| Time: 0:00:01</em></div>
<div><em>Loaded 3665 entries from dependency cache.</em></div>
<div><em>Parsing recipes: 100% |##########################################=
###########################################################################=
###################################| Time: 0:00:07</em></div>
<div><em>Parsing of 2414 .bb files complete (2403 cached, 11 parsed). 3605=
 targets, 374 skipped, 0 masked, 0 errors.</em></div>
<div><em>NOTE: Resolving any missing task queue dependencies</em></div>
<div><em>ERROR: Nothing PROVIDES 'lapack-native' (but virtual:native:/home=
/william/sagitta/meta/recipes-devtools/python-scipy/python3-scipy_1.5.2.bb =
DEPENDS on or otherwise requires it). Close matches:</em></div>
<div><em>&nbsp; tclap-native</em></div>
<div><em>&nbsp; lua-native</em></div>
<div><em>&nbsp; atk-native</em></div>
<div><em>ERROR: Required build target 'python3-scikit-learn' has no builda=
ble providers.</em></div>
<div><em>Missing or unbuildable dependency chain was: ['python3-scikit-lea=
rn', 'python3-scipy-native', 'lapack-native']<br /><br /><br /><br /><br />=
</em>It seems lapack is not compiled native because of it I am facing the i=
ssue</div>
<div>&nbsp;</div>
<div>Thanks&nbsp;</div>
<div>William Jacob</div>
<div>&nbsp;</div>

--IX2s7VdcGI4rqKILcpJx--

--JFL4ENCZvwYUL7aiNWsu
Content-Type: application/octet-stream; name="python3-scikit-learn_0.23.2.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="python3-scikit-learn_0.23.2.bb"

aW5jbHVkZSBweXRob24tc2Npa2l0LWxlYXJuLmluYwoKCgo=

--JFL4ENCZvwYUL7aiNWsu
Content-Type: application/octet-stream; name="python-scikit-learn.inc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="python-scikit-learn.inc"

U1VNTUFSWSA9ICJQeXRob24gQ3RyYW5zbGF0ZTIiCkRFU0NSSVBUSU9OID0gIkNUcmFuc2xhdGUy
IGlzIGEgZmFzdCBpbmZlcmVuY2UgZW5naW5lIGZvciBPcGVuTk1ULXB5IGFuZCBPcGVuTk1ULXRm
IG1vZGVscyBzdXBwb3J0aW5nIGJvdGggQ1BVIGFuZCBHUFUgZXhlY3V0aW9uIgpIT01FUEFHRSA9
ICJodHRwczovL3B5cGkucHl0aG9uLm9yZy9weXBpL3BiciIKU0VDVElPTiA9ICJkZXZlbC9weXRo
b24iCkxJQ0VOU0UgPSAiQ0xPU0VEIgoKU1JDX1VSSVttZDVzdW1dID0gImEwM2U1MmEzZmE2OTg4
YmY5MzJkYjVkY2RjNzQwMTljIgpTUkNfVVJJW3NoYTI1NnN1bV0gPSAiMjA3NjZmNTE1ZTZjZDZm
OTU0NTU0Mzg3ZGZhZTcwNWQ5M2M3YjU0NGVjMGU2YzZhNWQ4ZTAwNmY2ZjdlZjQ4MCIKCgoKCmlu
aGVyaXQgc2V0dXB0b29sczMgcHlwaQoKUkRFUEVORFNfJHtQTn0gKz0gIiR7UFlUSE9OX1BOfS1w
aXAgcHl0aG9uMy1udW1weS1uYXRpdmUgcHl0aG9uMy1zY2lweSAiCkRFUEVORFMgKz0gInB5dGhv
bjMtbnVtcHktbmF0aXZlICBweXRob24zLXB5YmluZDExIgpERVBFTkRTICs9ICJweXRob24zLXNj
aXB5LW5hdGl2ZSIKCkJCQ0xBU1NFWFRFTkQgKz0gIm5hdGl2ZSBuYXRpdmVzZGsiCgojQ0xFQU5C
Uk9LRU4gPSAiMSIKCgpleHBvcnQgTEFQQUNLID0gIiR7U1RBR0lOR19MSUJESVJ9IgpleHBvcnQg
QkxBUyA9ICIke1NUQUdJTkdfTElCRElSfSIKCmV4cG9ydCBGOTAgPSAiJHtUQVJHRVRfUFJFRklY
fWdmb3J0cmFuIgoKZXhwb3J0IEZBUkNIID0gIiR7VFVORV9DQ0FSR1N9IgoKCg==

--JFL4ENCZvwYUL7aiNWsu--
