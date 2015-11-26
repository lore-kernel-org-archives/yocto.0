Return-Path: <dariusz.pelowski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE01DE00855; Thu, 26 Nov 2015 09:25:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dariusz.pelowski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73EF7E00343
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 09:25:39 -0800 (PST)
Received: by wmvv187 with SMTP id v187so40424188wmv.1
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 09:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=mVvRHm2efJ7pK9gC9WShj2guGXm/qrK2PMrRHg2OGoE=;
	b=W+r/YLMOYtEawMPhEkSwqzdBgxK06I8nJjLZ4vjWjCJW05KVQI7uPrxgTbxNV/bQti
	MDJV1Z4gjhvysdyY6xaFLFIgmmUzU9o5IapFqVGT4GmW5l6xCajUcFuaKgCdLqxEs7Y7
	iGlpNUxwiRrX9yhhhhlrubsxBWqmB+Yj2cG9nUJXKRIagdjTtTcz7Pbrtrx/sujIK5nC
	xCbAaiGQyu1212z72U7IYvHx8u9DVTZO9bPZVAeosVmcap/+1gEDrKOBKOk9lUz4JayU
	mvoEsKeQUC/hcUogUkUJtNJT2QkkHp3sm/CM0tgCjJOsW4kcpy+x+O/dgHA88eL0xg+/
	yHLA==
MIME-Version: 1.0
X-Received: by 10.194.143.115 with SMTP id sd19mr56787939wjb.94.1448558738076; 
	Thu, 26 Nov 2015 09:25:38 -0800 (PST)
Received: by 10.27.217.198 with HTTP; Thu, 26 Nov 2015 09:25:37 -0800 (PST)
Date: Thu, 26 Nov 2015 18:25:37 +0100
Message-ID: <CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com>
From: Dariusz Pelowski <dariusz.pelowski@gmail.com>
To: yocto@yoctoproject.org
Subject: Failing devshell
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
X-List-Received-Date: Thu, 26 Nov 2015 17:25:42 -0000
X-Groupsio-MsgNum: 27474
Content-Type: multipart/mixed; boundary=089e0112d056052905052574dd67

--089e0112d056052905052574dd67
Content-Type: multipart/alternative; boundary=089e0112d056052902052574dd65

--089e0112d056052902052574dd65
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I'm getting an error during execution of devshell:
bitbake -c devshell  quilt-native
WARNING: Host distribution "Arch-Linux" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
...
ERROR: Unable to spawn terminal auto: Execution of
'/home/darekp/locale_test/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/r=
un.do_terminal.18591'
failed with exit code 1:
Opcja =E2=80=9E-t=E2=80=9D nie jest ju=C5=BC obs=C5=82ugiwana w tej wersji =
programu gnome-terminal.
Przetworzenie parametr=C3=B3w si=C4=99 nie powiod=C5=82o: Opcja =E2=80=9E--=
disable-factory=E2=80=9D nie
jest ju=C5=BC obs=C5=82ugiwana w tej wersji programu gnome-terminal.
ERROR: Function failed: do_devshell
ERROR: Logfile of failure stored in:
/home/darekp/locale_test/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/lo=
g.do_devshell.18591
ERROR: Task 3 (/home/darekp/poky/meta/recipes-devtools/quilt/
quilt-native_0.64.bb, do_devshell) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4 tasks of which 3 didn't need to be rerun
and 1 failed.


The cause of the problem is the implementation of
poky/meta/lib/oe/terminal.py. It expects that gnome-terminal --version will
return string starting from: "GNOME Terminal". But the returned string
differs when locale is changes. This looks like this:

[darekp@darekp ~]$ LANG=3DC gnome-terminal --version
GNOME Terminal 3.18.2

[darekp@darekp ~]$ LANG=3Dpl_PL.utf8 gnome-terminal --version
Terminal GNOME 3.18.2

The same problem affects other locales in gnome-terminal. I'm proposing to
fix this issue by setting LANG=3DC during execution of gnome-terminal
--version.

Is it acceptable solution? Could you apply attached patch?

Thanks,
Dariusz

--089e0112d056052902052574dd65
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br>I&#39;m getting an error during execution =
of devshell:<br>bitbake -c devshell=C2=A0 quilt-native<br>WARNING: Host dis=
tribution &quot;Arch-Linux&quot; has not been validated with this version o=
f the build system; you may possibly experience unexpected failures. It is =
recommended that you use a tested distribution.<br>...<br>ERROR: Unable to =
spawn terminal auto: Execution of &#39;/home/darekp/locale_test/tmp/work/x8=
6_64-linux/quilt-native/0.64-r0/temp/run.do_terminal.18591&#39; failed with=
 exit code 1:<br>Opcja =E2=80=9E-t=E2=80=9D nie jest ju=C5=BC obs=C5=82ugiw=
ana w tej wersji programu gnome-terminal.<br>Przetworzenie parametr=C3=B3w =
si=C4=99 nie powiod=C5=82o: Opcja =E2=80=9E--disable-factory=E2=80=9D nie j=
est ju=C5=BC obs=C5=82ugiwana w tej wersji programu gnome-terminal.<br>ERRO=
R: Function failed: do_devshell<br>ERROR: Logfile of failure stored in: /ho=
me/darekp/locale_test/tmp/work/x86_64-linux/quilt-native/0.64-r0/temp/log.d=
o_devshell.18591<br>ERROR: Task 3 (/home/darekp/poky/meta/recipes-devtools/=
quilt/<a href=3D"http://quilt-native_0.64.bb">quilt-native_0.64.bb</a>, do_=
devshell) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempt=
ed 4 tasks of which 3 didn&#39;t need to be rerun and 1 failed.<br><br><br>=
</div>The cause of the problem is the implementation of poky/meta/lib/oe/te=
rminal.py. It expects that gnome-terminal --version will return string star=
ting from: &quot;GNOME Terminal&quot;. But the returned string differs when=
 locale is changes. This looks like this:<br><div><br>[darekp@darekp ~]$ LA=
NG=3DC gnome-terminal --version<br><span style=3D"color:rgb(255,0,0)">GNOME=
 Terminal</span> 3.18.2<br><br>[darekp@darekp ~]$ LANG=3Dpl_PL.utf8 gnome-t=
erminal --version<br><span style=3D"color:rgb(255,0,0)">Terminal GNOME</spa=
n> 3.18.2<br><br>The same problem affects other locales in gnome-terminal. =
I&#39;m proposing to fix this issue by setting LANG=3DC during execution of=
 gnome-terminal --version. <br><br>Is it acceptable solution? Could you app=
ly attached patch?<br><br>Thanks,<br>Dariusz<br><br></div></div>

--089e0112d056052902052574dd65--

--089e0112d056052905052574dd67
Content-Type: text/x-diff; charset=US-ASCII; 
	name="0001-fix-for-locale-dependend-version-string-returned-by-.patch"
Content-Disposition: attachment; 
	filename="0001-fix-for-locale-dependend-version-string-returned-by-.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ihgi25ol0

RnJvbSBlNDljNWZjNzJhZTY5ZjZhNDMyMzFmNDJiYzU0OTRiODRiMWM4NWJiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYXJpdXN6IFBlbG93c2tpIDxkYXJpdXN6LnBlbG93c2tpQGdt
YWlsLmNvbT4KRGF0ZTogVGh1LCAyNiBOb3YgMjAxNSAxNzo1OTo1MyArMDEwMApTdWJqZWN0OiBb
UEFUQ0hdIGZpeCBmb3IgbG9jYWxlIGRlcGVuZGVuZCB2ZXJzaW9uIHN0cmluZyByZXR1cm5lZCBi
eQogZ25vbWUtdGVybWluYWwKCi0tLQogbWV0YS9saWIvb2UvdGVybWluYWwucHkgfCA0ICsrKy0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9tZXRhL2xpYi9vZS90ZXJtaW5hbC5weSBiL21ldGEvbGliL29lL3Rlcm1pbmFsLnB5Cmlu
ZGV4IGE0YThjOTcuLjFlZmMwNmQgMTAwNjQ0Ci0tLSBhL21ldGEvbGliL29lL3Rlcm1pbmFsLnB5
CisrKyBiL21ldGEvbGliL29lL3Rlcm1pbmFsLnB5CkBAIC0yNDQsNyArMjQ0LDkgQEAgZGVmIGNo
ZWNrX3Rlcm1pbmFsX3ZlcnNpb24odGVybWluYWxOYW1lKToKICAgICAgICAgY21kdmVyc2lvbiA9
ICclcyAtLXZlcnNpb24nICUgdGVybWluYWxOYW1lCiAgICAgICAgIGlmIHRlcm1pbmFsTmFtZS5z
dGFydHN3aXRoKCd0bXV4Jyk6CiAgICAgICAgICAgICBjbWR2ZXJzaW9uID0gJyVzIC1WJyAlIHRl
cm1pbmFsTmFtZQotICAgICAgICBwID0gc3ViLlBvcGVuKFsnc2gnLCAnLWMnLCBjbWR2ZXJzaW9u
XSwgc3Rkb3V0PXN1Yi5QSVBFLHN0ZGVycj1zdWIuUElQRSkKKyAgICAgICAgbmV3ZW52ID0gb3Mu
ZW52aXJvbi5jb3B5KCkKKyAgICAgICAgbmV3ZW52WyJMQU5HIl0gPSAiQyIKKyAgICAgICAgcCA9
IHN1Yi5Qb3BlbihbJ3NoJywgJy1jJywgY21kdmVyc2lvbl0sIHN0ZG91dD1zdWIuUElQRSwgc3Rk
ZXJyPXN1Yi5QSVBFLCBlbnY9bmV3ZW52KQogICAgICAgICBvdXQsIGVyciA9IHAuY29tbXVuaWNh
dGUoKQogICAgICAgICB2ZXJfaW5mbyA9IG91dC5yc3RyaXAoKS5zcGxpdCgnXG4nKQogICAgIGV4
Y2VwdCBPU0Vycm9yIGFzIGV4YzoKLS0gCjIuNi4yCgo=

--089e0112d056052905052574dd67--
