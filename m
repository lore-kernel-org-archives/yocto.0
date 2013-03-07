Return-Path: <varun292006@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C1E0EE014E9
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 08:16:30 -0800 (PST)
Received: by mail-pb0-f51.google.com with SMTP id un15so474043pbc.24
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 08:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=fYS6fe92U0tv/ngcM+u8uizqB8TNIZF4GUYH1++g/mM=;
	b=J1ZA6v1ldyvb43UB1cXvAPfA4MlPrG84hqs88CfjHWZrauZ5VvaAxkSIex3xHukbsk
	sauDBL0pKJo35iId1BEphKVm6JPgkVYgIk4+QqTVGcdVWuSwcJ1XRGrdqEogj32nmNLJ
	2rxJvYjtm6sBVV4fUwT3hlHc50aFcJpSwnMHV7I9gDUeajJ2erRuoad0N4RtkkSV6sA6
	d+g7IorUmkY5LILquwAIHotnHm8ysYpxoRLNNDfSk6qf6lKQGw9si/dZ5I66lwkv850w
	jwGV6xDuoBgeJJ2+dBDUQP+OVxoye8m8r1PpoUoIl8NplnPfWRctisDkFcoAYuDpic9g
	swtg==
MIME-Version: 1.0
X-Received: by 10.68.221.9 with SMTP id qa9mr15109742pbc.118.1362672990367;
	Thu, 07 Mar 2013 08:16:30 -0800 (PST)
Received: by 10.68.11.228 with HTTP; Thu, 7 Mar 2013 08:16:30 -0800 (PST)
In-Reply-To: <CAHUNapQ8qJp0PvNQfGtdyg=DW9Eoy9bnxdSd+B7bjgFHmmV9Ew@mail.gmail.com>
References: <CAGxOggE12nhCd7Yohz7Rakr48qyqJ9bhPLBQwWp4KTjv9BkEvQ@mail.gmail.com>
	<CAHUNapTir2grjiC7Fgz6mtt1uh1s0wpVxF0N4f4F+BxCfDwKVw@mail.gmail.com>
	<CAGxOggHYVaUugWborwmwYFsA3cRDKN6mv+04jzMRMW+70DU_HQ@mail.gmail.com>
	<CAHUNapQ8qJp0PvNQfGtdyg=DW9Eoy9bnxdSd+B7bjgFHmmV9Ew@mail.gmail.com>
Date: Thu, 7 Mar 2013 21:46:30 +0530
Message-ID: <CAGxOggELcBYjX+8NbWxjh6O5XFHpX8XwqzruVfnMpJMhKYHB7Q@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob terminal is getting terminated
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
X-List-Received-Date: Thu, 07 Mar 2013 16:16:30 -0000
Content-Type: multipart/alternative; boundary=e89a8ff2457189377404d75807fa

--e89a8ff2457189377404d75807fa
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I tried putting the tar files in the "download" folder but that did not
work. I tried extracting the files too. But no luck.... :(
What shall I do to make this work...???


On Thu, Mar 7, 2013 at 5:13 AM, Trevor Woerner <twoerner@gmail.com> wrote:

> I don't see any reason this conversation can't be on the public
> mailing list. That way others can help and/or learn from the
> discussion. I hope you don't mind be bringing it back to the mailing
> list.
>
> On Wed, Mar 6, 2013 at 11:32 AM, varun bhatnagar <varun292006@gmail.com>
> wrote:
> > Yes....I have...I tried running bitbake today....it also checked for the
> > dependencies and it was trying to download quilt-0.60.tar.gz from
> > http://savannah.gnu.org and from many other mirror sites....but
> connection
> > was not getting established. Is there any way through which I can
> manually
> > install these dependencies and then run bitbake?
>
> If you have look at your conf/local.conf file you'll see a variable
> called DL_DIR. If it is commented out, then your download directory
> will be a directory named "downloads" based wherever your build it
> taking place (if it is set to something, that something becomes your
> download directory). If you are having network issues, you can
> download the necessary files yourself. If you place them in this
> DL_DIR directory they will be found and used by your build.
>

--e89a8ff2457189377404d75807fa
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Hi,<div><br></div><div style>I tried putting the tar files in the &quot;download&quot; folder but that did not work. I tried extracting the files too. But no luck.... :(</div><div style>What shall I do to make this work...???</div>
</div><div class="gmail_extra"><br><br><div class="gmail_quote">On Thu, Mar 7, 2013 at 5:13 AM, Trevor Woerner <span dir="ltr">&lt;<a href="mailto:twoerner@gmail.com" target="_blank">twoerner@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I don&#39;t see any reason this conversation can&#39;t be on the public<br>
mailing list. That way others can help and/or learn from the<br>
discussion. I hope you don&#39;t mind be bringing it back to the mailing<br>
list.<br>
<div class="im"><br>
On Wed, Mar 6, 2013 at 11:32 AM, varun bhatnagar &lt;<a href="mailto:varun292006@gmail.com">varun292006@gmail.com</a>&gt; wrote:<br>
&gt; Yes....I have...I tried running bitbake today....it also checked for the<br>
&gt; dependencies and it was trying to download quilt-0.60.tar.gz from<br>
&gt; <a href="http://savannah.gnu.org" target="_blank">http://savannah.gnu.org</a> and from many other mirror sites....but connection<br>
&gt; was not getting established. Is there any way through which I can manually<br>
&gt; install these dependencies and then run bitbake?<br>
<br>
</div>If you have look at your conf/local.conf file you&#39;ll see a variable<br>
called DL_DIR. If it is commented out, then your download directory<br>
will be a directory named &quot;downloads&quot; based wherever your build it<br>
taking place (if it is set to something, that something becomes your<br>
download directory). If you are having network issues, you can<br>
download the necessary files yourself. If you place them in this<br>
DL_DIR directory they will be found and used by your build.<br>
</blockquote></div><br></div>

--e89a8ff2457189377404d75807fa--
