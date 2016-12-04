Return-Path: <meerkoetter@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC1EE00DEF; Sun,  4 Dec 2016 11:24:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (meerkoetter[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f174.google.com (mail-wj0-f174.google.com
	[209.85.210.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6657FE00DEA
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 11:24:03 -0800 (PST)
Received: by mail-wj0-f174.google.com with SMTP id qp4so273436672wjc.3
	for <yocto@yoctoproject.org>; Sun, 04 Dec 2016 11:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=bbMUEPBw6xOogAMd1NPSZcAjSp7X9Usa8ebpGbHjxQw=;
	b=qqsce8gwpyFhXM3OTImwCMV4uonSkq1AGTH38tnm/7wWy62qf8mj80zq2e0ROFzVLz
	xBOifwcOBkYTq0xmeL/la6EnL980DVkNhPRIjWeeNipBx67c8oPkbI8LJbVpWo3T/gDG
	mmswMTuwllE/aF0H9O15aEv971e3vRAobflajrSWHX8cXmQNwldYGcoK7+tzkNSBhshj
	mwB88sjEI4ztNjwexr9XpYBTii/PRfz1rNMRqKD2H13RQucMBbBzwG5AJ0GyyhTKiROr
	thqXU67AyaclV/Kk6Ji/7c46TQ7xZwlEBa5aR22+qM7HBlFEcwCjcnuwjDF9JGNOSq4B
	0LgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=bbMUEPBw6xOogAMd1NPSZcAjSp7X9Usa8ebpGbHjxQw=;
	b=f8je7qek+JVCeKTLNTSE6rZ6FlJzvwvhub0faVyviDbdJNJX4mmgIqFOv6ygswFLzO
	/v7J7fIaHo8CWCKPAvAJwruNt6U3U/yyyl/sVZQZQvNVQo0AX6eluCHR0fF2p3qStrz5
	AKIgF/Jhd3XuAp89kIqcSSDp90aNZ9pCu7iZ9dJ8MU+v2g1se8DaO8L0uDxnGIWU0rM8
	GzmKTt255KsNsPJD8VNi0Ofxz99hzDEJRseyO1rKKTU2Fm1m+c9xd5Bknpa1p5czBldf
	Nq72HcI/mCfoY5rz9EkEhwcRqDQSCNNarwNMV/eQHjRGr4HG59kxYTCgrTedpuCbb03o
	LuaQ==
X-Gm-Message-State: AKaTC004caL4ZM/mXLv2T6soUCv1fxz1prIxUj8TasZnL/cbO/Hb28ksHNj6l9LdmddQoghJyPzzi7ytUk+bUw==
X-Received: by 10.194.187.103 with SMTP id fr7mr44747666wjc.99.1480879442861; 
	Sun, 04 Dec 2016 11:24:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.186.68 with HTTP; Sun, 4 Dec 2016 11:24:01 -0800 (PST)
Received: by 10.80.186.68 with HTTP; Sun, 4 Dec 2016 11:24:01 -0800 (PST)
In-Reply-To: <3800149.2tT9rjCn72@peggleto-mobl.ger.corp.intel.com>
References: <382d1e8e-1257-c255-354d-ffaf2f54385f@cryostase.eu>
	<3800149.2tT9rjCn72@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Frank_Meerk=C3=B6tter?= <meerkoetter@googlemail.com>
Date: Sun, 4 Dec 2016 20:24:01 +0100
Message-ID: <CAEmxt=9e6CiDuvDm9hTDpQ5ewmC665ZOpfNk41LLotMsydT=GQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [recipetool] Failure to create a new recipe (failed to parse setup.py)
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
X-List-Received-Date: Sun, 04 Dec 2016 19:24:06 -0000
Content-Type: multipart/alternative; boundary=047d7bd6bc9c25aa610542da1d4d

--047d7bd6bc9c25aa610542da1d4d
Content-Type: text/plain; charset=UTF-8

Hi Paul,


Am 04.12.2016 20:15 schrieb "Paul Eggleton" <paul.eggleton@linux.intel.com>:

Hi Vincent,

On Sun, 04 Dec 2016 10:18:25 Vincent Rubiolo wrote:
> I am trying to use recipetool to create a new recipe as a learning
> example[0] but it fails with the error below after downloading the
> remote archive. Is this a known error? I have tried to look for it on
> the mailing list archives and the web and nothing shows up.
>
> I am following the steps under the dev manual[1] after having cloned the
> morty poky branch and sourcing oe-init-build-env.
>
> The commands are run in a Fedora 23 Docker container as my host is
> Fedora 25 but I get the same error if I run recipetool in that env too.
>
> Thanks for your help!
>
> Vincent
>
> [0] I am aware there is already a recipe for octoprint at
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-maker/tree/
recipes-webui/octo
> print/octoprint_git.bb?h=master [1]
> http://www.yoctoproject.org/docs/current/dev-manual/dev-
manual.html#new-reci
> pe-locate-or-automatically-create-a-base-recipe
>
> $ git clone git://git.yoctoproject.org/poky -b morty
> $ cd poky
> $ . oe-init-build-env
> $ recipetool create -o ./octoprint.bb -x octoprint-master
> https://github.com/foosel/OctoPrint/archive/master.zip
> NOTE: Fetching https://github.com/foosel/OctoPrint/archive/master.zip...
> --2016-12-04 18:08:38--
> https://github.com/foosel/OctoPrint/archive/master.zip
> Resolving github.com (github.com)... 192.30.253.112, 192.30.253.113
> Connecting to github.com (github.com)|192.30.253.112|:443... connected.
> HTTP request sent, awaiting response... 302 Found
> Location: https://codeload.github.com/foosel/OctoPrint/zip/master
> [following]
> --2016-12-04 18:08:38--
> https://codeload.github.com/foosel/OctoPrint/zip/master
> Resolving codeload.github.com (codeload.github.com)... 192.30.253.121,
> 192.30.253.120
> Connecting to codeload.github.com
> (codeload.github.com)|192.30.253.121|:443... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 2974977 (2.8M) [application/zip]
> Saving to: '/yocto/poky/build/downloads/master.zip'
>
>
> 2016-12-04 18:08:39 (3.20 MB/s) -
> '/yocto/poky/build/downloads/master.zip' saved [2974977/2974977]
>
> NOTE: Unpacking /yocto/poky/build/downloads/master.zip to
> /tmp/recipetool-4tplbgta/
> ERROR: Failed to parse setup.py
> Traceback (most recent call last):
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 181, in process
>      setup_info, uses_setuptools, setup_non_literals, extensions =
> self.parse_setup_py(setupscript)
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 347, in parse_setup_py
>      info, imported_modules, non_literals, extensions =
gather_setup_info(f)
> File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py", line
> 604, in gather_setup_info
>      parsed = ast.parse(fileobj.read(), fileobj.name)
>    File "/usr/lib64/python3.4/encodings/ascii.py", line 26, in decode
>      return codecs.ascii_decode(input, self.errors)[0]
> UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position
> 4657: ordinal not in range(128)
> Traceback (most recent call last):
>    File "/yocto/poky/scripts/recipetool", line 120, in <module>
>      ret = main()
>    File "/yocto/poky/scripts/recipetool", line 109, in main
>      ret = args.func(args)
>    File "/yocto/poky/scripts/lib/recipetool/create.py", line 615, in
> create_recipe
>      handler.process(srctree_use, classes, lines_before, lines_after,
> handled, extravalues)
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 225, in process
>      self.apply_info_replacements(info)
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 452, in apply_info_replacements
>      new_value = replace_value(search, replace, a_value)
>    File "/yocto/poky/scripts/lib/recipetool/create_buildsys_python.py",
> line 427, in replace_value
>      new_value = re.sub(search, replace, value)
>    File "/usr/lib64/python3.4/re.py", line 179, in sub
>      return _compile(pattern, flags).sub(repl, string, count)
> TypeError: expected string or buffer

Hmm, it looks like we're treating a byte array as a string (i.e. missing
decoding) and that doesn't work. Likely this broke during the Python3
migration, and since there are a number of different code paths in
recipetool's python handling code our relatively simplistic automated tests
didn't hit it. I have a fix here and will send it out soon.


Just a hint. Something like this also happens when using the "devtool add".

Regards Frank

--047d7bd6bc9c25aa610542da1d4d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Paul,<div dir=3D"auto"><br></div><div class=3D"gmail_e=
xtra" dir=3D"auto"><br><div class=3D"gmail_quote">Am 04.12.2016 20:15 schri=
eb &quot;Paul Eggleton&quot; &lt;<a href=3D"mailto:paul.eggleton@linux.inte=
l.com">paul.eggleton@linux.intel.com</a>&gt;:<br type=3D"attribution"><bloc=
kquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">Hi Vincent,<br>
<div class=3D"elided-text"><br>
On Sun, 04 Dec 2016 10:18:25 Vincent Rubiolo wrote:<br>
&gt; I am trying to use recipetool to create a new recipe as a learning<br>
&gt; example[0] but it fails with the error below after downloading the<br>
&gt; remote archive. Is this a known error? I have tried to look for it on<=
br>
&gt; the mailing list archives and the web and nothing shows up.<br>
&gt;<br>
&gt; I am following the steps under the dev manual[1] after having cloned t=
he<br>
&gt; morty poky branch and sourcing oe-init-build-env.<br>
&gt;<br>
&gt; The commands are run in a Fedora 23 Docker container as my host is<br>
&gt; Fedora 25 but I get the same error if I run recipetool in that env too=
.<br>
&gt;<br>
&gt; Thanks for your help!<br>
&gt;<br>
&gt; Vincent<br>
&gt;<br>
&gt; [0] I am aware there is already a recipe for octoprint at<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-maker/tree/r=
ecipes-webui/octo" rel=3D"noreferrer" target=3D"_blank">http://git.yoctopro=
ject.org/<wbr>cgit/cgit.cgi/meta-maker/tree/<wbr>recipes-webui/octo</a><br>
&gt; print/<a href=3D"http://octoprint_git.bb?h=3Dmaster" rel=3D"noreferrer=
" target=3D"_blank">octoprint_git.bb?h=3D<wbr>master</a> [1]<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/current/dev-manual/dev-man=
ual.html#new-reci" rel=3D"noreferrer" target=3D"_blank">http://www.yoctopro=
ject.org/<wbr>docs/current/dev-manual/dev-<wbr>manual.html#new-reci</a><br>
&gt; pe-locate-or-automatically-<wbr>create-a-base-recipe<br>
&gt;<br>
&gt; $ git clone git://<a href=3D"http://git.yoctoproject.org/poky" rel=3D"=
noreferrer" target=3D"_blank">git.yoctoproject.org/<wbr>poky</a> -b morty<b=
r>
&gt; $ cd poky<br>
&gt; $ . oe-init-build-env<br>
&gt; $ recipetool create -o ./<a href=3D"http://octoprint.bb" rel=3D"norefe=
rrer" target=3D"_blank">octoprint.bb</a> -x octoprint-master<br>
&gt; <a href=3D"https://github.com/foosel/OctoPrint/archive/master.zip" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/foosel/<wbr>OctoPrint/=
archive/master.zip</a><br>
&gt; NOTE: Fetching <a href=3D"https://github.com/foosel/OctoPrint/archive/=
master.zip." rel=3D"noreferrer" target=3D"_blank">https://github.com/foosel=
/<wbr>OctoPrint/archive/master.zip.</a>.<wbr>.<br>
&gt; --2016-12-04 18:08:38--<br>
&gt; <a href=3D"https://github.com/foosel/OctoPrint/archive/master.zip" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/foosel/<wbr>OctoPrint/=
archive/master.zip</a><br>
&gt; Resolving <a href=3D"http://github.com" rel=3D"noreferrer" target=3D"_=
blank">github.com</a> (<a href=3D"http://github.com" rel=3D"noreferrer" tar=
get=3D"_blank">github.com</a>)... 192.30.253.112, 192.30.253.113<br>
&gt; Connecting to <a href=3D"http://github.com" rel=3D"noreferrer" target=
=3D"_blank">github.com</a> (<a href=3D"http://github.com" rel=3D"noreferrer=
" target=3D"_blank">github.com</a>)|192.30.253.112|:<wbr>443... connected.<=
br>
&gt; HTTP request sent, awaiting response... 302 Found<br>
&gt; Location: <a href=3D"https://codeload.github.com/foosel/OctoPrint/zip/=
master" rel=3D"noreferrer" target=3D"_blank">https://codeload.github.com/<w=
br>foosel/OctoPrint/zip/master</a><br>
&gt; [following]<br>
&gt; --2016-12-04 18:08:38--<br>
&gt; <a href=3D"https://codeload.github.com/foosel/OctoPrint/zip/master" re=
l=3D"noreferrer" target=3D"_blank">https://codeload.github.com/<wbr>foosel/=
OctoPrint/zip/master</a><br>
&gt; Resolving <a href=3D"http://codeload.github.com" rel=3D"noreferrer" ta=
rget=3D"_blank">codeload.github.com</a> (<a href=3D"http://codeload.github.=
com" rel=3D"noreferrer" target=3D"_blank">codeload.github.com</a>)... 192.3=
0.253.121,<br>
&gt; 192.30.253.120<br>
&gt; Connecting to <a href=3D"http://codeload.github.com" rel=3D"noreferrer=
" target=3D"_blank">codeload.github.com</a><br>
&gt; (<a href=3D"http://codeload.github.com" rel=3D"noreferrer" target=3D"_=
blank">codeload.github.com</a>)|192.30.<wbr>253.121|:443... connected.<br>
&gt; HTTP request sent, awaiting response... 200 OK<br>
&gt; Length: 2974977 (2.8M) [application/zip]<br>
&gt; Saving to: &#39;/yocto/poky/build/downloads/<wbr>master.zip&#39;<br>
&gt;<br>
&gt;<br>
&gt; 2016-12-04 18:08:39 (3.20 MB/s) -<br>
&gt; &#39;/yocto/poky/build/downloads/<wbr>master.zip&#39; saved [2974977/2=
974977]<br>
&gt;<br>
&gt; NOTE: Unpacking /yocto/poky/build/downloads/<wbr>master.zip to<br>
&gt; /tmp/recipetool-4tplbgta/<br>
&gt; ERROR: Failed to parse setup.py<br>
&gt; Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0 File &quot;/yocto/poky/scripts/lib/<wbr>recipetool/create=
_buildsys_<wbr>python.py&quot;,<br>
&gt; line 181, in process<br>
&gt;=C2=A0 =C2=A0 =C2=A0 setup_info, uses_setuptools, setup_non_literals, e=
xtensions =3D<br>
&gt; self.parse_setup_py(<wbr>setupscript)<br>
&gt;=C2=A0 =C2=A0 File &quot;/yocto/poky/scripts/lib/<wbr>recipetool/create=
_buildsys_<wbr>python.py&quot;,<br>
&gt; line 347, in parse_setup_py<br>
&gt;=C2=A0 =C2=A0 =C2=A0 info, imported_modules, non_literals, extensions =
=3D gather_setup_info(f)<br>
&gt; File &quot;/yocto/poky/scripts/lib/<wbr>recipetool/create_buildsys_<wb=
r>python.py&quot;, line<br>
&gt; 604, in gather_setup_info<br>
&gt;=C2=A0 =C2=A0 =C2=A0 parsed =3D ast.parse(fileobj.read(), <a href=3D"ht=
tp://fileobj.name" rel=3D"noreferrer" target=3D"_blank">fileobj.name</a>)<b=
r>
&gt;=C2=A0 =C2=A0 File &quot;/usr/lib64/python3.4/<wbr>encodings/ascii.py&q=
uot;, line 26, in decode<br>
&gt;=C2=A0 =C2=A0 =C2=A0 return codecs.ascii_decode(input, self.errors)[0]<=
br>
&gt; UnicodeDecodeError: &#39;ascii&#39; codec can&#39;t decode byte 0xc3 i=
n position<br>
&gt; 4657: ordinal not in range(128)<br>
&gt; Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0 File &quot;/yocto/poky/scripts/<wbr>recipetool&quot;, lin=
e 120, in &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 ret =3D main()<br>
&gt;=C2=A0 =C2=A0 File &quot;/yocto/poky/scripts/<wbr>recipetool&quot;, lin=
e 109, in main<br>
&gt;=C2=A0 =C2=A0 =C2=A0 ret =3D args.func(args)<br>
&gt;=C2=A0 =C2=A0 File &quot;/yocto/poky/scripts/lib/<wbr>recipetool/create=
.py&quot;, line 615, in<br>
&gt; create_recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0 handler.process(srctree_use, classes, lines_before=
, lines_after,<br>
&gt; handled, extravalues)<br>
&gt;=C2=A0 =C2=A0 File &quot;/yocto/poky/scripts/lib/<wbr>recipetool/create=
_buildsys_<wbr>python.py&quot;,<br>
&gt; line 225, in process<br>
&gt;=C2=A0 =C2=A0 =C2=A0 self.apply_info_replacements(<wbr>info)<br>
&gt;=C2=A0 =C2=A0 File &quot;/yocto/poky/scripts/lib/<wbr>recipetool/create=
_buildsys_<wbr>python.py&quot;,<br>
&gt; line 452, in apply_info_replacements<br>
&gt;=C2=A0 =C2=A0 =C2=A0 new_value =3D replace_value(search, replace, a_val=
ue)<br>
&gt;=C2=A0 =C2=A0 File &quot;/yocto/poky/scripts/lib/<wbr>recipetool/create=
_buildsys_<wbr>python.py&quot;,<br>
&gt; line 427, in replace_value<br>
&gt;=C2=A0 =C2=A0 =C2=A0 new_value =3D re.sub(search, replace, value)<br>
&gt;=C2=A0 =C2=A0 File &quot;/usr/lib64/python3.4/re.py&quot;, line 179, in=
 sub<br>
&gt;=C2=A0 =C2=A0 =C2=A0 return _compile(pattern, flags).sub(repl, string, =
count)<br>
&gt; TypeError: expected string or buffer<br>
<br>
</div>Hmm, it looks like we&#39;re treating a byte array as a string (i.e. =
missing<br>
decoding) and that doesn&#39;t work. Likely this broke during the Python3<b=
r>
migration, and since there are a number of different code paths in<br>
recipetool&#39;s python handling code our relatively simplistic automated t=
ests<br>
didn&#39;t hit it. I have a fix here and will send it out soon.</blockquote=
></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Just a hint. Som=
ething like this also happens when using the &quot;devtool add&quot;.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Regards Frank</div><div dir=
=3D"auto"><br></div></div>

--047d7bd6bc9c25aa610542da1d4d--
