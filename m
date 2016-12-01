Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58501E00D44; Thu,  1 Dec 2016 14:28:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.65 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A44AFE00D3D
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 14:28:22 -0800 (PST)
Received: by mail-lf0-f65.google.com with SMTP id o20so20422760lfg.3
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 14:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wv/c28v3GVVDjFOQf5OgAUQiItNDjZHZq/qk/GlcMxU=;
	b=rmSjCBGw8+RSZkPIpKePm9oMlB2Wdckr9215pVDSyGT6ACzyhlkNocMogRNyqrMwTN
	92Crue7LxeprkmZjjicGg34tGKIBlEUZ+2TXxGXcV8iYpEO5+vol39sbubFYo7bwfFSY
	mgkfW3i18+YWXLlrPqC+SVEqsNJqoLgz2nh89/ZOzuV/bORYeUMRRuNMNrwPjujhV1jX
	n/gOfaIHJJ5pxDQhiWZveuqCGzuLqhluS8XsZ5YSvGgzCqnZn/2V+oSc7EZwVNbQsEi3
	KnOFEGRaP6Z9XkZrNNQegbyZFb4XTx7uUxCZOP9MojT+zPYvxZInWQoN2efLz670QclE
	lBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wv/c28v3GVVDjFOQf5OgAUQiItNDjZHZq/qk/GlcMxU=;
	b=LNRThVVWso+2xSHTqrYrzs8iOr0/DLRRCNCXgtsDm89G+CcARtcMF8LWr3m1SBnkam
	LAhyCe7I93bvRtGsZhGmqmkfinNpW1QsrrQBkh/cwoWfZycbIpj8TXjl9WMc2S/VsEKD
	tadwQymYH+gwDjKqiuzkdkZ1ZTdkhDm2pqvo7CfXpnmlN/Z7Qa6AbEq3ef2J2bJxbaeL
	UUk71DiwD/LTFttCvirz/u0bm27ELUbZJ8Wb1+A//PEnjNWymAE9KwHsip/JLgMNAClV
	Qm0oz/Rpf3ZOhiiq2EKjH1aC2mrsF8pLXv3iGhijc3V0MEEZ8bAiIwXsgIgxZxYnzfsb
	Bs4A==
X-Gm-Message-State: AKaTC03D0H/LUBC/wNC70Q0yjcmYTF/kdjYsHvmxnwBP7RJYJJ/dvDthd71aSz0QsQ5DxFfLElCKNO3m3E5p3g==
X-Received: by 10.25.27.145 with SMTP id b139mr13703445lfb.114.1480631301244; 
	Thu, 01 Dec 2016 14:28:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.35.194 with HTTP; Thu, 1 Dec 2016 14:28:20 -0800 (PST)
In-Reply-To: <20161201200550.GA31925@openSUSE-i7.site>
References: <20161201200550.GA31925@openSUSE-i7.site>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 1 Dec 2016 17:28:20 -0500
Message-ID: <CADkTA4OX9crgydX7FWBs6hQ1AYr3rOsGhokNPG+fdZNKef_-7w@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: yocto-kernel-tools and multiple users
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
X-List-Received-Date: Thu, 01 Dec 2016 22:28:25 -0000
Content-Type: multipart/alternative; boundary=001a11401b0ac10dd80542a05669

--001a11401b0ac10dd80542a05669
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 1, 2016 at 3:05 PM, Trevor Woerner <twoerner@gmail.com> wrote:

> I believe a recent change in the yocto-kernel-tools is causing some funny
> issue I saw this morning on my overnight jenkins builds.
>
>         commit 08463d684c1952e74c25344cddace4c3f24c739d
>         Date:   Mon Oct 31 14:30:12 2016 -0400
>
>             scc: exit on error
>
>             If there is an error in the processing of the input files, scc
>             should exit and inform the user.
>
>             scc is executed on a combined/preprocessed file and as a result
>             it doesn't have the granularity to see each input file
> individually.
>
>             Rather than moving preprocessing into scc (from spp), we can
> trap
>             the line number of the error and dump context around the line.
> This
>             gives the user a pointer to the input file and the specific
> line
>             that caused the problem.
>
>             Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>
>         diff --git a/tools/scc b/tools/scc
>         index b6ab747..0294103 100755
>         --- a/tools/scc
>         +++ b/tools/scc
>         @@ -238,18 +238,37 @@ process_file()
>                  done
>
>                  unset PATH
>         -        if [ -n "${verbose}" ]; then
>         -            eval . $in $outfile_append
>         -        else
>         -            # hide stderr if we aren't verbose
>         -            eval . $in $outfile_append 2> /dev/null
>         -        fi
>         +        (
>         +            set -e
>         +            eval . $in $outfile_append > /tmp/scc-output 2>&1
>         +        )
>         +    )
>
>         -        if [ $? -ne 0 ]; then
>         -            echo "[ERROR]: processing of file $in failed"
>         -            exit 1
>         +    if [ $? -ne 0 ]; then
>         +        echo "[ERROR]: processing of file $in failed"
>         +        cat /tmp/scc-output
>         +
>         +        # look for common errors so we can point to the right
> input file
>         +
>         +        # 1) /tmp/tmp.gfN6WsbDHN: line 403: cat: No such file or
> directory
>         +        #     "grep -oh" will only output what matches, which
> gets us "line 404: .."
>         +        #     cut gets us the second field, which is the line
> number
>         +        line=$(cat /tmp/scc-output | grep -oh "line.*:" | cut -f2
> -d' ' | sed 's/://g')
>         +        if [ -n "$line" ]; then
>         +            let start_line=$line-20
>         +            let end_line=$line+10
>         +            if [ $start_line -lt 0 ]; then
>         +                start_line=0
>         +            fi
>         +            echo ""
>         +            echo "Context around the error is:"
>         +            echo ""
>         +            sed -n -e "$start_line,$end_line p" -e "$end_line q"
> $in | sed 's/^/    /'
>         +            echo ""
>         +            echo "See pre-processed file $in for more details"
>                  fi
>         -    )
>         +        exit 1
>         +    fi
>
>              return 0
>          }
>
> In order to catch errors, scc's output is being hardcoded to
> /tmp/scc-output.
> But on my box there are two users who perform builds: jenkins and myself.
> When
> the second person comes along to do a build it finds inadequate
> permissions on
> /tmp/scc-output.
>
> Is anyone else seeing this?
>



Gah, that's my bad. I'm currently in transit for a trip to Europe, but I'll
fix this
to use mktmp and friends tomorrow and send out a patch.

Bruce


> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a11401b0ac10dd80542a05669
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Dec 1, 2016 at 3:05 PM, Trevor Woerner <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I believe a recent ch=
ange in the yocto-kernel-tools is causing some funny<br>
issue I saw this morning on my overnight jenkins builds.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 commit 08463d684c1952e74c25344cddace4<wbr>c3f24=
c739d<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Date:=C2=A0 =C2=A0Mon Oct 31 14:30:12 2016 -040=
0<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 scc: exit on error<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 If there is an error in the proce=
ssing of the input files, scc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 should exit and inform the user.<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 scc is executed on a combined/pre=
processed file and as a result<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 it doesn&#39;t have the granulari=
ty to see each input file individually.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Rather than moving preprocessing =
into scc (from spp), we can trap<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 the line number of the error and =
dump context around the line. This<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gives the user a pointer to the i=
nput file and the specific line<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 that caused the problem.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Signed-off-by: Bruce Ashfield &lt=
;<a href=3D"mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.c=
om</a>&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 diff --git a/tools/scc b/tools/scc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 index b6ab747..0294103 100755<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --- a/tools/scc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +++ b/tools/scc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @@ -238,18 +238,37 @@ process_file()<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unset PATH<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -n &quot;${ve=
rbose}&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 eval=
 . $in $outfile_append<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # hi=
de stderr if we aren&#39;t verbose<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 eval=
 . $in $outfile_append 2&gt; /dev/null<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 (<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set =
-e<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 eval=
 . $in $outfile_append &gt; /tmp/scc-output 2&gt;&amp;1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 )<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ $? -ne 0 ]; t=
hen<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo=
 &quot;[ERROR]: processing of file $in failed&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exit=
 1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 if [ $? -ne 0 ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;[ERROR]=
: processing of file $in failed&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 cat /tmp/scc-outpu=
t<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 # look for common =
errors so we can point to the right input file<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 # 1) /tmp/tmp.gfN6=
WsbDHN: line 403: cat: No such file or directory<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=
=A0&quot;grep -oh&quot; will only output what matches, which gets us &quot;=
line 404: ..&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=
=A0cut gets us the second field, which is the line number<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 line=3D$(cat /tmp/=
scc-output | grep -oh &quot;line.*:&quot; | cut -f2 -d&#39; &#39; | sed &#3=
9;s/://g&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -n &quot;$lin=
e&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 let =
start_line=3D$line-20<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 let =
end_line=3D$line+10<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [=
 $start_line -lt 0 ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 start_line=3D0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo=
 &quot;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo=
 &quot;Context around the error is:&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo=
 &quot;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sed =
-n -e &quot;$start_line,$end_line p&quot; -e &quot;$end_line q&quot; $in | =
sed &#39;s/^/=C2=A0 =C2=A0 /&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo=
 &quot;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo=
 &quot;See pre-processed file $in for more details&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -=C2=A0 =C2=A0 )<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 exit 1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 fi<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
In order to catch errors, scc&#39;s output is being hardcoded to /tmp/scc-o=
utput.<br>
But on my box there are two users who perform builds: jenkins and myself. W=
hen<br>
the second person comes along to do a build it finds inadequate permissions=
 on<br>
/tmp/scc-output.<br>
<br>
Is anyone else seeing this?<br></blockquote><div><br><br><br></div><div>Gah=
, that&#39;s my bad. I&#39;m currently in transit for a trip to Europe, but=
 I&#39;ll fix this<br></div><div>to use mktmp and friends tomorrow and send=
 out a patch.<br><br></div><div>Bruce<br></div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt n=
ot follow the NULL pointer, for chaos and madness await thee at its end&quo=
t;</div>
</div></div>

--001a11401b0ac10dd80542a05669--
