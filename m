Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 685B6E00524
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 20:00:45 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so3256414iea.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 20:00:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=/dYAU3mSAr2O8nQuiMDKHRaUI91sLX+OJPFFLqvJ0EM=;
	b=QdiQA7lvMzh9r2NOr2l/kDud2xHNg5aoPc8zMkfCMuUOe1mNp0GqqCXD7Wm9WSqsRL
	65iiz/wdCTutzeweEDyrbZvyC39iXurLcIvPSFidICRj8wY/P5tzLsyDK54FtM3e9Xed
	2H1ycLNIrOKNcy2InXhcCSQvAVAXSLQQvAuF1P52I4l/O5znzOFjTV1VKdlzV4NqCcuW
	5bhAd8MWZllEXy9UpzFvvzxBbWnuhtdPABfQOg7Xo/N9NUbGUUHQ5UJUNKYkC7C7lGH0
	ze24+H0If++0AqwQQ14Nv+TQnxuDwM7uePjCKfQLe+rfchgEwdSJ5M4M86QzCjZsDI5Y
	YL7w==
MIME-Version: 1.0
Received: by 10.50.51.225 with SMTP id n1mr2753igo.7.1349406044608; Thu, 04
	Oct 2012 20:00:44 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.64.27.197 with HTTP; Thu, 4 Oct 2012 20:00:44 -0700 (PDT)
In-Reply-To: <1A527469-CEF5-434E-8604-540899C8BA04@gamestop.com>
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
	<CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
	<6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
	<CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
	<1A527469-CEF5-434E-8604-540899C8BA04@gamestop.com>
Date: Thu, 4 Oct 2012 20:00:44 -0700
X-Google-Sender-Auth: 6rtbGP7YJYuMd4obP08_pN2uziI
Message-ID: <CA+gsK-qzq5dK4QwOq1kw1U8tNbhDt-UZsRha-_ZKu0Kw8AWFAg@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
X-Gm-Message-State: ALoCoQnMXUtgR3FHS6bt9/Qotop2k5X0jaEtTZfCWLqNa7RAIxZDv1QnW2dkKMSrnjnqjtMqd/l3
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The BitBake equivalent of "Hello, World!"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Oct 2012 03:00:45 -0000
Content-Type: multipart/alternative; boundary=14dae93408cff258c104cb4713e0

--14dae93408cff258c104cb4713e0
Content-Type: text/plain; charset=ISO-8859-1

Disclaimer: I am no Bitbake expert. I just put this together by rummaging
through the Bitbake code for a couple of minutes. I am reasonably confident
that what I am saying below is rather accurate but the Bitbake experts know
better.


Indeed it is.  One of my first tasks will be to *remove* as much as
> possible from this until the only thing it does is print out "Hello,
> World!"  I'll be happy to share my results if anyone is interested.
>
> You can just do a recipe and overwrite do_build() in it e.g.

python do_build() {
    bb.note("Hello World")
}

>
> If I understand correctly, the name of the task is "build", and the name
> of the Python function that implements it is "do_build()".  So, it appears
> BitBake prefixes all task names with "do_" to derive the name of the
> function that implements the task.  Have I got that right?
>

Yes. All tasks defined in recipes or classes have to follow the naming
convention do_<taskname> when defining them. However, when adding them to
the queue you have to omit the do_ e.g. addtask <taskname>.


>
>  The "build" task is *required*, and it's the *only* one that's required?
>

No task is really required. The build task is only the default task if you
do not specify a specific task with -c. However, if you use -c Bitbake will
only execute that task and not check and run any task that this task is
depending on. But that's a whole different story.


>
>  I've been looking around in the BitBake source code a lot, so I'm
> *somewhat* familiar with it.  I tried to find the "hard" reference to
> "do_build" you described,  but I couldn't.  Can you give me a hint?
>
> In <bitbakedir>/lib/bb/cooker.py:

class BBCooker:
    """
    Manages one bitbake build run
    """

    def __init__(self, configuration, server_registration_cb):

        # stuff omitted

        if not self.configuration.cmd:
            self.configuration.cmd = bb.data.getVar("BB_DEFAULT_TASK",
self.configuration.data, True) or "build"

      # more stuff

Bitbake checks if the variable BB_DEFAULT_TASK is set and if not uses
"build" as default task. You could set BB_DEFAULT_TASK in a configuration
file e.g. bitbake.conf to any task you like (as long as it is defined).


>  I see here that you're creating the recipe-specific "do_fetch()"
> function, which seems intended to "override" the default "do_fetch()"
> provided by the base class.  This prompts some questions:
>

My  base.bbclass file does not have a do_fetch function. What am I missing?


>
>  1) Must a "task function" be a Python function?  Or will a bash function
> do?
>

Tasks must be Python functions.

>
>  2) Is it absolutely necessary to follow a recipe-specific task function
> with an "addtask"?  Based on experience from "real" object-oriented
> languages, a naive observer (like me) would guess the simple presence of
> "do_fetch()" in the recipe is all that's necessary.  Or is it the "addtask"
> that actually "slots" the new function in?
>
>   You have to use addtask to make your Python function, given it follows
the naming convention, known to Bitbake as a task. You can put addtask with
the tasks name anywhere in your recipe. It does not need to follow the task
but it makes it easier to read. If you just add a task using addtask it is
kind of standalone. If you use addtask with the before/after directives you
establish an execution order.

:rjs

--14dae93408cff258c104cb4713e0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Disclaimer: I am no Bitbake expert. I just put this together by rummag=
ing through the Bitbake code for a couple of minutes. I am reasonably confi=
dent that what I am saying below is rather accurate but the Bitbake experts=
 know better.</div>
<div><br></div><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div style=3D"word-wrap:break-word"><div><div>Indeed it is. =A0One of my =
first tasks will be to *remove* as much as possible from this until the onl=
y thing it does is print out &quot;Hello, World!&quot; =A0I&#39;ll be happy=
 to share my results if anyone is interested.</div>
<div class=3D"im">
<div><br></div></div></div></div></blockquote><div>You can just do a recipe=
 and overwrite do_build() in it e.g.</div><div><br></div><div>python do_bui=
ld() {</div><div>=A0 =A0 bb.note(&quot;Hello World&quot;)</div><div>}</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><div><di=
v class=3D"im"><div>
</div>
<div><br></div></div><div>If I understand correctly, the name of the task i=
s &quot;build&quot;, and the name of the Python function that implements it=
 is &quot;do_build()&quot;. =A0So, it=A0appears BitBake prefixes all task n=
ames with &quot;do_&quot; to derive the name of the function that implement=
s the task.
 =A0Have I got that right?</div></div></div></blockquote><div><br></div><di=
v>Yes. All tasks defined in recipes or classes have to follow the naming co=
nvention do_&lt;taskname&gt; when defining them. However, when adding them =
to the queue you have to omit the do_ e.g. addtask &lt;taskname&gt;.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-=
word"><div>
<div>
<div><br>
</div>
</div>
<div>The &quot;build&quot; task is *required*, and it&#39;s the *only*=A0on=
e that&#39;s required?</div></div></div></blockquote><div><br></div><div>No=
 task is really required. The build task is only the default task if you do=
 not specify a specific task with -c. However, if you use -c Bitbake will o=
nly execute that task and not check and run any task that this task is depe=
nding on. But that&#39;s a whole different story.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-=
word"><div>
<div><br>
</div>
<div>I&#39;ve been looking around in the BitBake source code a lot, so I&#3=
9;m *somewhat* familiar with it. =A0I tried to find the &quot;hard&quot; re=
ference to &quot;do_build&quot; you described, =A0but I couldn&#39;t. =A0Ca=
n you give me a hint?</div>
<div class=3D"im">
<div><br></div></div></div></div></blockquote><div>In &lt;bitbakedir&gt;/li=
b/bb/cooker.py:</div><div><br></div><div><div>class BBCooker:</div><div>=A0=
 =A0 &quot;&quot;&quot;</div><div>=A0 =A0 Manages one bitbake build run</di=
v><div>
=A0 =A0 &quot;&quot;&quot;</div><div><br></div><div>=A0 =A0 def __init__(se=
lf, configuration, server_registration_cb):</div><div><br></div><div>=A0 =
=A0 =A0 =A0 # stuff omitted</div><div><br></div><div>=A0 =A0 =A0 =A0 if not=
 self.configuration.cmd:</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0 self.configuration.cmd =3D bb.data.getVar(&quo=
t;BB_DEFAULT_TASK&quot;, self.configuration.data, True) or &quot;build&quot=
;</div><div><br></div><div>=A0 =A0 =A0 # more stuff</div></div><div><br></d=
iv><div>Bitbake checks if the variable BB_DEFAULT_TASK is set and if not us=
es &quot;build&quot; as default task. You could set BB_DEFAULT_TASK in a co=
nfiguration file e.g. bitbake.conf to any task you like (as long as it is d=
efined).</div>
<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break=
-word"><div><div class=3D"im"><div><br>
</div>
</div><div>I see here that you&#39;re creating the recipe-specific &quot;do=
_fetch()&quot; function, which seems intended to &quot;override&quot; the d=
efault &quot;do_fetch()&quot; provided by the base class. =A0This prompts s=
ome questions:</div>
</div></div></blockquote><div><br></div><div>My =A0base.bbclass file does n=
ot have a do_fetch function. What am I missing?</div><div>=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<div style=3D"word-wrap:break-word"><div>
<div><br>
</div>
<div>1)=A0Must a &quot;task function&quot; be a Python function? =A0Or will=
 a bash function do?</div></div></div></blockquote><div><br></div><div>Task=
s must be Python functions.=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div style=3D"word-wrap:break-word"><div>
<div><br>
</div>
<div>2)=A0Is it absolutely necessary to follow a recipe-specific task funct=
ion with an &quot;addtask&quot;? =A0Based on experience from &quot;real&quo=
t; object-oriented languages, a naive observer (like me) would guess the si=
mple presence of &quot;do_fetch()&quot; in the recipe is all that&#39;s
 necessary. =A0Or is it the &quot;addtask&quot; that actually &quot;slots&q=
uot; the new function in?</div>
<div><br>
</div>
</div>
</div>

</blockquote></div>You have to use addtask to make your Python function, gi=
ven it follows the naming convention, known to Bitbake as a task. You can p=
ut addtask with the tasks name anywhere in your recipe. It does not need to=
 follow the task but it makes it easier to read. If you just add a task usi=
ng addtask it is kind of standalone. If you use addtask with the before/aft=
er directives you establish an execution order.<div>
<br></div><div>:rjs<br><div><br></div></div>

--14dae93408cff258c104cb4713e0--
