Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE26DE00404; Fri,  2 Sep 2016 09:56:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D5FCE0034A
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 09:56:51 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id v143so3592628wmv.1
	for <yocto@yoctoproject.org>; Fri, 02 Sep 2016 09:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wEMGg+5alvHLCOYpDc9DwoLZhe62WjpGwXFK7Qn/UwA=;
	b=R0k0YSNP7AW4HUfeYdE4wvOJcleq/AeYbPzTEBDt2e0RrygZMncnc+Y5de5R3TjfK+
	YnsErbNlipkFO5NBnEsLGAfiblSuZR43X/YGHU8UD7XXBd02qbbOYQBKKQXICL85WYMi
	h5lvdz/nSykbwxdJIggrLqKSyAc0iIuBx/swI9q0JwbcvHpHQhOjoJnN975eJ6myiNkM
	LqaM79df8xpxJZ1+/ONYMcgZDwi97CAeMYlNJBcJ4iMDSGZhkr/l5M8BflmqTLsbDIRX
	qrYM0yifeS1ORpjP5EySKhMo7FTfkspa3q7qbWNd/ph2pP/N7HIHNwVFyq1OH4weMFxT
	Bevw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wEMGg+5alvHLCOYpDc9DwoLZhe62WjpGwXFK7Qn/UwA=;
	b=R9zW0QAgH7PiMqhr4HHo0v7zTbFL7oxaxWHrVNWfFaIQroqNnccL3CB+pcr+k+L+Vh
	BSw5omKdYg2gJwtpC3O3qazHZ2rkDAYZXvaED666gpXmRP1PWQLpa5Cvdd7v2vORAtZd
	YD1Em0zw3+pbMDBADR2+QMaqfQC0aw9kpXlssfkjYkhJ6VYmmNmHPf3kBFTO6o4qAN7s
	J2REzpg+nMJ28U6Umuvp5HurcIt8GYcVcxUFHrjHs0PZkpdoMgPRFHCqKUIw4kNss1fz
	6YmrCFHtkWN4YH/k+CWQPUnGCyPYrd8mGQzNJL4ffxAkLwDWpgC+SIRnZKmM8KvQw+VZ
	IJvQ==
X-Gm-Message-State: AE9vXwPnkjB+/tgFmGn0pPxgtRcUeUnq7ewRc8rMR+joOrWUx7yoYOvRb2mndZaCvjf7iynKpK9xaqkDyLTNFw==
X-Received: by 10.194.202.198 with SMTP id kk6mr20440137wjc.22.1472835410925; 
	Fri, 02 Sep 2016 09:56:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.184.208 with HTTP; Fri, 2 Sep 2016 09:56:50 -0700 (PDT)
Received: by 10.28.184.208 with HTTP; Fri, 2 Sep 2016 09:56:50 -0700 (PDT)
In-Reply-To: <1472829511-3816-1-git-send-email-humberto.ibarra.lopez@intel.com>
References: <1472829511-3816-1-git-send-email-humberto.ibarra.lopez@intel.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Fri, 2 Sep 2016 09:56:50 -0700
Message-ID: <CA+n--H8xW_-oL4D2beJ4vTAtJytKeLiRsby_0x4EiksxYFAZfQ@mail.gmail.com>
To: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH v4][yocto-autobuilder] RunOeSelftest.py: changed to new oe-selftest syntax
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
X-List-Received-Date: Fri, 02 Sep 2016 16:56:54 -0000
Content-Type: multipart/alternative; boundary=047d7b87502a7b2621053b8937e9

--047d7b87502a7b2621053b8937e9
Content-Type: text/plain; charset=UTF-8

On Sep 2, 2016 8:17 AM, "Humberto Ibarra" <humberto.ibarra.lopez@intel.com>
wrote:
>
> oe-selftest is changing syntax with YOCTO #8938. This patch checks the
correct syntax version and uses the right command to avoid breaking
oe-seltest autobuilder.
>
> [YOCTO #8938]
>
> Signed-off-by: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
Acked-by: Bill Randle <billr@neocat.org>

> ---
>  .../autobuilder/buildsteps/RunOeSelftest.py              | 16
++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
> diff --git
a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> index 84d32fe..18629f0 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> @@ -33,9 +33,21 @@ class RunOeSelftest(ShellCommand):
>          self.command += ". ./oe-init-build-env; "
>          self.command += "checkvnc; "
>          if self.tests == None:
> -            self.command += "if [ -d ../meta-selftest ]; then export
DISPLAY=:1; oe-selftest --run-all-tests; else echo 'Skipping step - no
meta-selftest layer here'; fi"
> +            oe_selftest_cmd = ("run","--run-all-tests")
>          else:
> -            self.command += "if [ -d ../meta-selftest ]; then export
DISPLAY=:1; oe-selftest " + self.tests + "; else echo 'Skipping step - no
meta-selftest layer here'; fi"
> +            oe_selftest_cmd = ("run --tests %s" % self.tests,
"--run-tests %s" % self.tests)
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

--047d7b87502a7b2621053b8937e9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Sep 2, 2016 8:17 AM, &quot;Humberto Ibarra&quot; &lt;<a h=
ref=3D"mailto:humberto.ibarra.lopez@intel.com">humberto.ibarra.lopez@intel.=
com</a>&gt; wrote:<br>
&gt;<br>
&gt; oe-selftest is changing syntax with YOCTO #8938. This patch checks the=
 correct syntax version and uses the right command to avoid breaking oe-sel=
test autobuilder.<br>
&gt;<br>
&gt; [YOCTO #8938]<br>
&gt;<br>
&gt; Signed-off-by: Humberto Ibarra &lt;<a href=3D"mailto:humberto.ibarra.l=
opez@intel.com">humberto.ibarra.lopez@intel.com</a>&gt;<br>
Acked-by: Bill Randle &lt;<a href=3D"mailto:billr@neocat.org">billr@neocat.=
org</a>&gt;</p>
<p dir=3D"ltr">&gt; ---<br>
&gt; =C2=A0.../autobuilder/buildsteps/RunOeSelftest.py=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 16 ++++++++++++++--<br>
&gt; =C2=A01 file changed, 14 insertions(+), 2 deletions(-)<br>
&gt;<br>
&gt; diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeS=
elftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelfte=
st.py<br>
&gt; index 84d32fe..18629f0 100644<br>
&gt; --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest=
.py<br>
&gt; +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest=
.py<br>
&gt; @@ -33,9 +33,21 @@ class RunOeSelftest(ShellCommand):<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.command +=3D &quot;. ./oe-init-=
build-env; &quot;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.command +=3D &quot;checkvnc; &q=
uot;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.tests =3D=3D None:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D &quot;if =
[ -d ../meta-selftest ]; then export DISPLAY=3D:1; oe-selftest --run-all-te=
sts; else echo &#39;Skipping step - no meta-selftest layer here&#39;; fi&qu=
ot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_selftest_cmd =3D (&quot;=
run&quot;,&quot;--run-all-tests&quot;)<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D &quot;if =
[ -d ../meta-selftest ]; then export DISPLAY=3D:1; oe-selftest &quot; + sel=
f.tests + &quot;; else echo &#39;Skipping step - no meta-selftest layer her=
e&#39;; fi&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_selftest_cmd =3D (&quot;=
run --tests %s&quot; % self.tests, &quot;--run-tests %s&quot; % self.tests)=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.command +=3D &quot;&quot;&quot; \<br=
>
&gt; +if [ -d ../meta-selftest ]; then \<br>
&gt; +=C2=A0 =C2=A0 export DISPLAY=3D:1; \<br>
&gt; +=C2=A0 =C2=A0 VERSION=3D$(oe-selftest --version 2&gt; /dev/null | cut=
 -d&#39; &#39; -f2); \<br>
&gt; +=C2=A0 =C2=A0 if [ \&quot;$VERSION\&quot; =3D=3D &#39;2.0&#39; ]; the=
n \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe-selftest %s; \<br>
&gt; +=C2=A0 =C2=A0 else \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe-selftest %s; \<br>
&gt; +=C2=A0 =C2=A0 fi; \<br>
&gt; +else \<br>
&gt; +=C2=A0 =C2=A0 echo &#39;Skipping step - no meta-selftest layer here&#=
39;;<br>
&gt; +fi&quot;&quot;&quot; % oe_selftest_cmd<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ShellCommand.start(self)<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0def _createOESelftestErrorReport(self, log):<br>
&gt; --<br>
&gt; 2.4.11<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br></p>

--047d7b87502a7b2621053b8937e9--
