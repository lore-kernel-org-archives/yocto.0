Subject: creating tarball for storing downloads; issue inheriting own-mirrors.bbclass
To: yocto@lists.yoctoproject.org
From: scott.threet@konecranes.com
X-Originating-Location: Harviala, Kanta-Häme, FI (62.61.97.11)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 Aug 2021 00:09:48 -0700
Message-ID: <uyUb.1629270588974601917.b3hh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dkBbOxXJgLSxc4MRUSpR"

--dkBbOxXJgLSxc4MRUSpR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to create tarballs to store yocto downloads. This is primarily =
to avoid old commits breaking when some random git repository changes their=
 master branch name or something like that. I have been using this: http://=
embeddedguruji.blogspot.com/2019/01/storing-yocto-downloads-on-private.html=
 , though I have seen other sources giving similar instructions.

I am having the following error (after putting the two lines at top of loca=
l.conf for my target and fixing the missing "):

ERROR: ParseError in configuration INHERITs: Could not inherit file classes=
/own=E2=80=90mirrors.bbclass

poky has own-mirrors.bbclass here: https://git.yoctoproject.org/cgit/cgit.c=
gi/poky/tree/meta/classes/own-mirrors.bbclass
I have pokey with path sources/poky; and in bblayers.conf I have this:
${BSPDIR} /sources/poky/meta \
We are on an old commit of poky, but that file is identical in the old comm=
it and current head of poky. If it matters we are on zeus.

So from this I'm not understanding why bitbake can't find the file or if it=
 has another error?

There is also supposedly an error logs at /opt/yocto/arkki-cyient-prod/bitb=
ake-cookerdaemon.log; but my /opt folder only has a subfolder containerd.

Any ideas about the problem or suggestions for what to check?

Thanks for any assistance,
Scott Threet

--dkBbOxXJgLSxc4MRUSpR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p>
<p>&nbsp;</p>
<p>I am trying to create tarballs to store yocto downloads. This is primari=
ly to avoid old commits breaking when some random git repository changes th=
eir master branch name or something like that. I have been using this: <a h=
ref=3D"http://embeddedguruji.blogspot.com/2019/01/storing-yocto-downloads-o=
n-private.html" target=3D"_blank" rel=3D"noopener">http://embeddedguruji.bl=
ogspot.com/2019/01/storing-yocto-downloads-on-private.html</a>, though I ha=
ve seen other sources giving similar instructions.</p>
<p>I am having the following error (after putting the two lines at top of l=
ocal.conf for my target and fixing the missing "):</p>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">ERROR: ParseError in configuration INHERITs: Could not inherit f=
ile classes/own=E2=80=90mirrors.bbclass</div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">&nbsp;</div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">&nbsp;</div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">poky has own-mirrors.bbclass here: <a href=3D"https://git.yoctop=
roject.org/cgit/cgit.cgi/poky/tree/meta/classes/own-mirrors.bbclass" target=
=3D"_blank" rel=3D"noopener">https://git.yoctoproject.org/cgit/cgit.cgi/pok=
y/tree/meta/classes/own-mirrors.bbclass</a></div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">I have pokey with path sources/poky; and in bblayers.conf I have=
 this:</div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;"><span>${BSPDIR}</span><span>/sources/poky/meta \</span></div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;"><span>We are on an old commit of poky, but that file is identica=
l in the old commit and current head of poky. If it matters we are on zeus.=
</span></div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">&nbsp;</div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;"><span>So from this I'm not understanding why bitbake can't find =
the file or if it has another error?</span></div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">&nbsp;</div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;"><span>There is also supposedly an error logs at /opt/yocto/arkki=
-cyient-prod/bitbake-cookerdaemon.log; but my /opt folder only has a subfol=
der containerd.</span></div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">&nbsp;</div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;"><span>Any ideas about the problem or suggestions for what to che=
ck?</span></div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">&nbsp;</div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;">&nbsp;</div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;"><span>Thanks for any assistance,</span></div>
<div style=3D"box-sizing: border-box; font-family: 'Segoe UI', system-ui, '=
Apple Color Emoji', 'Segoe UI Emoji', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; white-space: normal; widows: 2; word-spac=
ing: 0px;"><span>Scott Threet</span></div>
</div>
<p><br />&nbsp;<br /><br /></p>

--dkBbOxXJgLSxc4MRUSpR--
