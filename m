Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AF0EE00E7B; Thu,  1 Sep 2016 20:38:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	*  1.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE2DAE00E79
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 20:38:42 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id c133so1102191wmd.2
	for <yocto@yoctoproject.org>; Thu, 01 Sep 2016 20:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZkPSbj1DW9gSQx4EK1lWNUnIvHC3ByO9EuuXsQpdMeQ=;
	b=0klNz0KmmTeXfrFKqq1Z2Ix49U6kUJ6YgrRu7YfXzrkXKuXVta3VZ+qNUgNL4//y4o
	hV57K2/7KWaCzes+lr+t0tyaQLFLfpHhVwl5PR3Cdn40BpJSSexQ94lzb1lgVzHTL3rt
	Uyr5SCC+t/pNbEzkeg6E99IN/SCG4GWEwMPOEGZEUy8vOZvOhE9TNMEmGNndUTYYDboU
	XS8LPgBYsZ9J0djvOiPSgJWRAOMwNhxlfWEBQf18fwsu0sELj70aQ2K4DcxPLf0tIp+u
	0GqN+4OzFxXYRZhyieBLyZTM9yoBiU4cFu40TbSzOgBkvjCi/cPF2owX4Io5l41/JRPd
	n4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZkPSbj1DW9gSQx4EK1lWNUnIvHC3ByO9EuuXsQpdMeQ=;
	b=Z+Fln2ml8mHkP6RWKroRK9yeEtyPA1ezh8EmrDnKOaBoz2skVe/AfMCzFEyjXTP3zv
	zEfEdFSvqUQFgQzt3fPmSeDxdjnLdlHbC+PfQs1eRKJDkvBh/6Wa6OxQBn/YZ0hD+58Y
	e5i7GJ3zYyIrkoCvB+gebvbydwTBs3NLu/fwqiepXN7vx7PXzK9gNr/kGKGgflMscq+c
	HfhgirhGWk3kVjpl8NLsIBNKuoNaZzGzBqKWduGViqoJ8+rvOxqwARBP5r2Z87RWFf8A
	NbHZ1KtYTP3G5Kxi/j7Zjr1wUxKkMA6zjbddnr+vHLKxuLy9ySSIAj3ItRv3pthtQLTX
	+0Kw==
X-Gm-Message-State: AE9vXwPyKWjasVQw+9OKrGm8zP8Rhry591ofs6nPA7GKiUjM6SMYuQcxOpP1cU163FtJ6+pkx4Wl791SXgjuyA==
X-Received: by 10.28.132.195 with SMTP id g186mr809068wmd.108.1472787521843;
	Thu, 01 Sep 2016 20:38:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.184.208 with HTTP; Thu, 1 Sep 2016 20:38:41 -0700 (PDT)
In-Reply-To: <1472758786-4503-1-git-send-email-humberto.ibarra.lopez@intel.com>
References: <1472758786-4503-1-git-send-email-humberto.ibarra.lopez@intel.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Thu, 1 Sep 2016 20:38:41 -0700
Message-ID: <CA+n--H_Oo1yJoBPEhAJv-Mn12PWfLaP=1i2rwzg5Vkwx6xeoRw@mail.gmail.com>
To: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH v3][yocto-autobuilder] RunOeSelftest.py: changed to new oe-selftest syntax
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
X-List-Received-Date: Fri, 02 Sep 2016 03:38:47 -0000
Content-Type: multipart/alternative; boundary=001a1144220611b6bb053b7e1192

--001a1144220611b6bb053b7e1192
Content-Type: text/plain; charset=UTF-8

Humberto,

The master branch of yocto-autobuilder has changed since you did this diff.
I would suggest you rebase and resubmit this particular patch.

    -Bill

On Thu, Sep 1, 2016 at 12:39 PM, Humberto Ibarra <
humberto.ibarra.lopez@intel.com> wrote:

> oe-selftest is changing syntax with YOCTO #8938. This patch checks the
> correct syntax version and uses the right command to avoid breaking
> oe-seltest autobuilder. Should be integrated together with the syntax
> changing patch.
>
> [YOCTO #8938]
>
> Signed-off-by: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
> ---
>  .../autobuilder/buildsteps/RunOeSelftest.py              | 16
> ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> index 809bcc3..ce0c0f6 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> @@ -34,9 +34,21 @@ class RunOeSelftest(ShellCommand):
>          self.command += "netstat -an | grep -q 5901 ;"
>          self.command += "if [ $? -ne 0 ]; then echo 'Starting a VNC
> server on :1'; vncserver :1; else echo 'Will use a VNC server already
> running on :1'; fi;"
>          if self.tests == None:
> -            self.command += "if [ -d ../meta-selftest ]; then export
> DISPLAY=:1; oe-selftest --run-all-tests; else echo 'Skipping step - no
> meta-selftest layer here'; fi"
> +            oe_selftest_cmd = ('run', '--run-all-tests')
>          else:
> -            self.command += "if [ -d ../meta-selftest ]; then export
> DISPLAY=:1; oe-selftest " + self.tests + "; else echo 'Skipping step - no
> meta-selftest layer here'; fi"
> +            oe_selftest_cmd = ("run --tests %s" % self.tests,
> "--run-tests %s" % self.tests)
> +        self.command += """ \
> +if [ -d ../meta-selftest ]; then \
> +    export DISPLAY=:1; \
> +    VERSION=$(oe-selftest --version 2> /dev/null | cut -d' ' -f2); \
> +    if [ \"$VERSION\" == '2.0' ]; then \
> +        oe-selftest %s; \
> +    else \
> +        oe-selftest %s; \
> +    fi; \
> +else \
> +    echo 'Skipping step - no meta-selftest layer here';
> +fi""" % oe_selftest_cmd
>          ShellCommand.start(self)
>
>      def _createOESelftestErrorReport(self, log):
> --
> 2.4.11
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1144220611b6bb053b7e1192
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Humberto,<div><br></div><div>The master branch of yocto-au=
tobuilder has changed since you did this diff. I would suggest you rebase a=
nd resubmit this particular patch.</div><div><br></div><div>=C2=A0 =C2=A0 -=
Bill</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Thu, Sep 1, 2016 at 12:39 PM, Humberto Ibarra <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:humberto.ibarra.lopez@intel.com" target=3D"_blank">humberto.ib=
arra.lopez@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">oe-selftest is changing syntax with YOCTO #8938. This patch checks the co=
rrect syntax version and uses the right command to avoid breaking oe-seltes=
t autobuilder. Should be integrated together with the syntax changing patch=
.<br>
<br>
[YOCTO #8938]<br>
<br>
Signed-off-by: Humberto Ibarra &lt;<a href=3D"mailto:humberto.ibarra.lopez@=
intel.com">humberto.ibarra.lopez@intel.<wbr>com</a>&gt;<br>
---<br>
=C2=A0.../autobuilder/buildsteps/<wbr>RunOeSelftest.py=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 16 ++++++++++++++--<br>
=C2=A01 file changed, 14 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/lib/python2.7/site-packages/<wbr>autobuilder/buildsteps/<wbr>R=
unOeSelftest.py b/lib/python2.7/site-packages/<wbr>autobuilder/buildsteps/<=
wbr>RunOeSelftest.py<br>
index 809bcc3..ce0c0f6 100644<br>
--- a/lib/python2.7/site-packages/<wbr>autobuilder/buildsteps/<wbr>RunOeSel=
ftest.py<br>
+++ b/lib/python2.7/site-packages/<wbr>autobuilder/buildsteps/<wbr>RunOeSel=
ftest.py<br>
@@ -34,9 +34,21 @@ class RunOeSelftest(ShellCommand):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.command +=3D &quot;netstat -an | gre=
p -q 5901 ;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.command +=3D &quot;if [ $? -ne 0 ]; =
then echo &#39;Starting a VNC server on :1&#39;; vncserver :1; else echo &#=
39;Will use a VNC server already running on :1&#39;; fi;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.tests =3D=3D None:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D &quot;if [ -d =
../meta-selftest ]; then export DISPLAY=3D:1; oe-selftest --run-all-tests; =
else echo &#39;Skipping step - no meta-selftest layer here&#39;; fi&quot;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_selftest_cmd =3D (&#39;run&#3=
9;, &#39;--run-all-tests&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D &quot;if [ -d =
../meta-selftest ]; then export DISPLAY=3D:1; oe-selftest &quot; + self.tes=
ts + &quot;; else echo &#39;Skipping step - no meta-selftest layer here&#39=
;; fi&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_selftest_cmd =3D (&quot;run -=
-tests %s&quot; % self.tests, &quot;--run-tests %s&quot; % self.tests)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D &quot;&quot;&quot; \<br>
+if [ -d ../meta-selftest ]; then \<br>
+=C2=A0 =C2=A0 export DISPLAY=3D:1; \<br>
+=C2=A0 =C2=A0 VERSION=3D$(oe-selftest --version 2&gt; /dev/null | cut -d&#=
39; &#39; -f2); \<br>
+=C2=A0 =C2=A0 if [ \&quot;$VERSION\&quot; =3D=3D &#39;2.0&#39; ]; then \<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe-selftest %s; \<br>
+=C2=A0 =C2=A0 else \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe-selftest %s; \<br>
+=C2=A0 =C2=A0 fi; \<br>
+else \<br>
+=C2=A0 =C2=A0 echo &#39;Skipping step - no meta-selftest layer here&#39;;<=
br>
+fi&quot;&quot;&quot; % oe_selftest_cmd<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ShellCommand.start(self)<br>
<br>
=C2=A0 =C2=A0 =C2=A0def _createOESelftestErrorReport(<wbr>self, log):<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.4.11<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a1144220611b6bb053b7e1192--
