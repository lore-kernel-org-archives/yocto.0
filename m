Return-Path: <richbayliss@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B70AE01419
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 07:19:03 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id f4so9379437iea.39
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 07:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=wi+P3CI27HKwgPhisXNFYnycQT9mbmgJpeygyfE6ki8=;
	b=NzTSnmuEG9IhlD5MhdBoQik98Mve8IxwonI85OhYF3OHell1jd3oINuncx43jvne6e
	u1JxBDa2hqSjK9ICQ0KQQZS9MWRAJ6vQRnR97a09SsYBwpCNyDD0vSiBJb34K8QSBzEJ
	CVZGnQtVKU5crswtSYElvbFOhVd8yTIVzsuf6jvstql8qyOGwWu2X2fKv2GZKrUeG1af
	G4kBCVqGDo0aAQB3cCDKAaljYe5p+8zgKzzVy+3XoTDYR7u8mjI54tCbwPTm7vF60O0C
	kPFLjx7bAkdMJ2T9yGoWCSK1mf8xQWwOOeGVrIUdNlHnqKTogkmb6jn00JUuCR487CeG
	VPFQ==
MIME-Version: 1.0
X-Received: by 10.42.79.142 with SMTP id r14mr11020414ick.51.1374243543034;
	Fri, 19 Jul 2013 07:19:03 -0700 (PDT)
Received: by 10.64.23.165 with HTTP; Fri, 19 Jul 2013 07:19:02 -0700 (PDT)
Received: by 10.64.23.165 with HTTP; Fri, 19 Jul 2013 07:19:02 -0700 (PDT)
In-Reply-To: <20130719125447.GA37574@sestofb10.enea.se>
References: <CAHLvMfaDVCOe925=5LK_p_M+wUNf7CzbvBXC0p97tnS1SqEBig@mail.gmail.com>
	<20130719125447.GA37574@sestofb10.enea.se>
Date: Fri, 19 Jul 2013 15:19:02 +0100
Message-ID: <CAHLvMfaSA4VbZ=GntbDbsxj-n2BWPB9eLZHG3Xp+BJ2nc6vgmQ@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: "Maxin B. John" <maxin.john@enea.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Adding Python support to build
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
X-List-Received-Date: Fri, 19 Jul 2013 14:19:04 -0000
Content-Type: multipart/alternative; boundary=20cf3010ea0937ba9904e1de028a

--20cf3010ea0937ba9904e1de028a
Content-Type: text/plain; charset=ISO-8859-1

On 19 Jul 2013 13:54, "Maxin B. John" <maxin.john@enea.com> wrote:
>
> Hi,
>
> > I have added a recipe to my build which RDEPENDS_${PN} = "python".
> > Although the package doesn't "need" python to run, it exposes a Python
> > library which I would like to use on the system in a Python script.
> RDEPENDS on "python-math" should do the trick.
>
> RDEPENDS_${PN} = "python-math"
>
> <snip>
> > Rich Bayliss
>
> Best Regards,
> Maxin

Thanks. That did the trick. I also needed 'select' so I added
'python-modules' for now. Will fine tune later.

--20cf3010ea0937ba9904e1de028a
Content-Type: text/html; charset=ISO-8859-1

<p dir="ltr"><br>
On 19 Jul 2013 13:54, &quot;Maxin B. John&quot; &lt;<a href="mailto:maxin.john@enea.com">maxin.john@enea.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; &gt; I have added a recipe to my build which RDEPENDS_${PN} = &quot;python&quot;.<br>
&gt; &gt; Although the package doesn&#39;t &quot;need&quot; python to run, it exposes a Python<br>
&gt; &gt; library which I would like to use on the system in a Python script.<br>
&gt; RDEPENDS on &quot;python-math&quot; should do the trick.<br>
&gt;<br>
&gt; RDEPENDS_${PN} = &quot;python-math&quot;<br>
&gt;<br>
&gt; &lt;snip&gt;<br>
&gt; &gt; Rich Bayliss<br>
&gt;<br>
&gt; Best Regards,<br>
&gt; Maxin</p>
<p dir="ltr">Thanks. That did the trick. I also needed &#39;select&#39; so I added &#39;python-modules&#39; for now. Will fine tune later. </p>

--20cf3010ea0937ba9904e1de028a--
