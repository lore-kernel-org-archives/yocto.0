Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 098BFE00EDC; Fri, 11 May 2018 05:02:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7143E00948
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 05:02:40 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id z4-v6so6699845iof.5
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 05:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=byMjDgDPXwTi61jWqFkKr/PyWA7w2Bprrz4n9ydPFoU=;
	b=TULmPyLFg3DuKZlPqn3zk+ld8SGNPl8zSgEg4RtApqkaFo1Ym51cnG7pJmYki5uCy8
	FqfJjFDleLeblWH8CogZfy8kg6rwkYvKGrstQyJyoqBF6ytq+o3TQD5rj6rBWCMe8SSI
	1yYK6Khn/7db2PPxFof+O7EQ7FjeJ9ylHuA44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=byMjDgDPXwTi61jWqFkKr/PyWA7w2Bprrz4n9ydPFoU=;
	b=i5vQJw6OKGB16gdRCLswfE265zCiOXWvzSocPHnNMN4rHgXaVa+sFPACFtyVtA6CCM
	x5HsmY3kefu1iSAtuQkvj88n/68beFTkdDciPCQmO45+4h+YvM1jQcOWaRrREwgzeh9e
	lxkTHz+LT6/FmnjJaJ36Iv77w/V0K1dbi+1vMekYaQUas0VAGCVwiljjLVR7AcPibLjF
	oZdbSmaTCfxYMqRLaougl6WV17K5B6pClTsEAbOOAC2kmDg0nVu2D6XWSIAOwURoptx4
	9xbCE2hLkniE7b8CHBaS4GlNTZaP92xr/uglf8BpAFc9JXC7lhKr8K2RXli/EVRcs1XP
	aaZw==
X-Gm-Message-State: ALKqPwdcPWYjDaevoXIJVR5Woc9jX8X+Zif0s6uXGBBfnueXg6elmCQ5
	ohz0vsXctoeNiFs5ozA/4cpaxLqPfOTrqG9z8wl3dguD
X-Google-Smtp-Source: AB8JxZpSaH1u7qLQDj/0gzxWt9K2KrE+IKSGaUEeUmK9fBhmpssnHk2pis+sUMh9xbogwzv6djelBJ8F5fEr0rgzec4=
X-Received: by 2002:a6b:a784:: with SMTP id
	q126-v6mr5600719ioe.98.1526040159759; 
	Fri, 11 May 2018 05:02:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b04:0:0:0:0:0 with HTTP; Fri, 11 May 2018 05:02:39
	-0700 (PDT)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 11 May 2018 14:02:39 +0200
Message-ID: <CAALXFYx=4RR+EMcika2M8D=vOiFMqxc==87ZGrME_Rp2gp=khA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Compilation error after upgrading rocko branch
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
X-List-Received-Date: Fri, 11 May 2018 12:02:42 -0000
Content-Type: multipart/alternative; boundary="000000000000a2c942056bece921"

--000000000000a2c942056bece921
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello forum.

After updating all my layers to the lastest state of the "rocko" branch, I
am getting this error in "meta-oe" layer:

| In file included from ../../git/fontforge/splinefont.h:36:0,
|                  from ../../git/fontforge/sd.h:34,
|                  from ../../git/fontforge/svg.h:4,
|                  from ../../git/fontforge/svg.c:28:
| ../../git/inc/gwwiconv.h:44:21: error: conflicting types for
=E2=80=98gww_iconv_close=E2=80=99
|  #define iconv_close gww_iconv_close
|                      ^
| ../../git/inc/gwwiconv.h:37:13: note: previous declaration of
=E2=80=98gww_iconv_close=E2=80=99 was here
|  extern void gww_iconv_close( gww_iconv_t cd);
|              ^~~~~~~~~~~~~~~
| Makefile:2282: recipe for target 'libfontforge_la-svg.lo' failed
| make[2]: *** [libfontforge_la-svg.lo] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: Leaving directory
'/home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-native/20170731-r0=
/build/fontforge'
| ERROR: oe_runmake failed
| Makefile:1561: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory '/home/yocto
/yocto/build/tmp/work/x86_64-linux/fontforge-native/20170731-r0/build'
| Makefile:1398: recipe for target 'all' failed
| make: *** [all] Error 2
| WARNING: /home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-native/2=
0170731-r0/temp/run.do_compile.13092:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_compile (log file is located at /home/yocto
/yocto/build/tmp/work/x86_64-linux/fontforge-native/20170731-r0/temp/log.do=
_compile.13092)
ERROR: Task (virtual:native:/home/yocto
/yocto/sources/meta-oe/meta-oe/recipes-graphics/fontforge/fontforge_2017073=
1.bb:do_compile)
failed with exit code '1'

This is my build machine:

 lsb_release -a
No LSB modules are available.
Distributor ID: Debian
Description: Debian GNU/Linux 9.4 (stretch)
Release: 9.4
Codename: stretch

rocko branch was building fine before the "git update" command.

Something seems to be broken?

Thank you in advance!
  -- Ivan

--000000000000a2c942056bece921
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello forum.</div><div><br></div><div>After updating =
all my layers to the lastest state of the &quot;rocko&quot; branch, I am ge=
tting this error in &quot;meta-oe&quot; layer:</div><div><br></div><div>| I=
n file included from ../../git/fontforge/splinefont.h:36:0,</div><div>|=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from ../../git/=
fontforge/sd.h:34,</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 from ../../git/fontforge/svg.h:4,</div><div>|=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 from ../../git/fontfor=
ge/svg.c:28:</div><div>| ../../git/inc/gwwiconv.h:44:21: error: conflicting=
 types for =E2=80=98gww_iconv_close=E2=80=99</div><div>|=C2=A0 #define icon=
v_close gww_iconv_close</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</div><div>| ../../git/inc/gwwiconv=
.h:37:13: note: previous declaration of =E2=80=98gww_iconv_close=E2=80=99 w=
as here</div><div>|=C2=A0 extern void gww_iconv_close( gww_iconv_t cd);</di=
v><div>|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~</d=
iv><div>| Makefile:2282: recipe for target &#39;libfontforge_la-svg.lo&#39;=
 failed</div><div>| make[2]: *** [libfontforge_la-svg.lo] Error 1</div><div=
>| make[2]: *** Waiting for unfinished jobs....</div><div>| make[2]: Leavin=
g directory &#39;/home/yocto/yocto/build/tmp/work/x86_64-linux/fontforge-na=
tive/20170731-r0/build/fontforge&#39;</div><div>| ERROR: oe_runmake failed<=
/div><div>| Makefile:1561: recipe for target &#39;all-recursive&#39; failed=
</div><div>| make[1]: *** [all-recursive] Error 1</div><div>| make[1]: Leav=
ing directory &#39;/home/<span style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline">yocto</span>/yocto/build=
/tmp/work/x86_64-linux/fontforge-native/20170731-r0/build&#39;</div><div>| =
Makefile:1398: recipe for target &#39;all&#39; failed</div><div>| make: ***=
 [all] Error 2</div><div>| WARNING: /home/<span style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial;float:none;display:inline">yocto</=
span>/yocto/build/tmp/work/x86_64-linux/fontforge-native/20170731-r0/temp/r=
un.do_compile.13092:1 exit 1 from &#39;exit 1&#39;</div><div>| ERROR: Funct=
ion failed: do_compile (log file is located at /home/<span style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial;float:none;display:inli=
ne">yocto</span>/yocto/build/tmp/work/x86_64-linux/fontforge-native/2017073=
1-r0/temp/log.do_compile.13092)</div><div>ERROR: Task (virtual:native:/home=
/<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">yocto</span>/yocto/sources/meta-oe/meta-oe/recip=
es-graphics/fontforge/fontforge_20170731.bb:do_compile) failed with exit co=
de &#39;1&#39;</div><div><br></div><div>This is my build machine:</div><div=
><br></div><div><div>=C2=A0lsb_release -a</div><div>No LSB modules are avai=
lable.</div><div>Distributor ID:<span style=3D"white-space:pre">	</span>Deb=
ian</div><div>Description:<span style=3D"white-space:pre">	</span>Debian GN=
U/Linux 9.4 (stretch)</div><div>Release:<span style=3D"white-space:pre">	</=
span>9.4</div><div>Codename:<span style=3D"white-space:pre">	</span>stretch=
</div></div><div><br></div><div>rocko branch was building fine before the &=
quot;git update&quot; command.<br></div><div><br></div><div>Something seems=
 to be broken?</div><div><br></div><div>Thank you in advance!</div><div>=C2=
=A0 -- Ivan</div><div><br></div><div>=C2=A0=C2=A0</div>
</div>

--000000000000a2c942056bece921--
