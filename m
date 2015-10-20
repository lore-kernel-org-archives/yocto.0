Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FED6E0071C; Tue, 20 Oct 2015 03:03:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 082FEE006F1
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 03:03:36 -0700 (PDT)
Received: by iodv82 with SMTP id v82so16203434iod.0
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 03:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=15kApt1iOdX6FDLuK/aqC5vPA1iRBUub51nZCFPtY1k=;
	b=yNT+IQg2XLChoL4QLHjiBPiEAG5eeJW9t2zWT5x9AgNXWuh9srXGiwDS7rMNbTI/b2
	n2kdRZMy4bEqhvQwN/V1SMdRPV6ZXr/1BEaTOkybkz8ZKy0ppnSzXB6DqMBmo94gOdcs
	PLVMQSJPTcsQGq9r64LMpX5zfrn8efCCd5T41JRyxMRQwl8uAKoClSDjCiiZwmpUSD4E
	P/8xvr0HZEYD62BJZRylbhyLO/8SkDvCj/raJR8tfRH8Q1FfmSpOeDcJ6xnXT3htC0/O
	Qq6TvoPPZBPDAX5WRM8FqaV4kGDAx0vGexi37XyS0QmTo9Wukp0OOqIKoviwwxYkZQ2a
	KMiw==
MIME-Version: 1.0
X-Received: by 10.107.131.147 with SMTP id n19mr2537843ioi.192.1445335415862; 
	Tue, 20 Oct 2015 03:03:35 -0700 (PDT)
Received: by 10.107.170.139 with HTTP; Tue, 20 Oct 2015 03:03:35 -0700 (PDT)
Received: by 10.107.170.139 with HTTP; Tue, 20 Oct 2015 03:03:35 -0700 (PDT)
In-Reply-To: <20151020061928.GB7776@ad.chargestorm.se>
References: <CAH21_vGLfHN=hYHeWNA3Epsf0QPpnOg47NDtE7Do5BsBz+vuFQ@mail.gmail.com>
	<20151019120812.GA2549@jama>
	<CAH21_vFrTWYUkjnTTsH6JCOQqk5R00ABQNhLE80-=CLhib_E7Q@mail.gmail.com>
	<20151020061928.GB7776@ad.chargestorm.se>
Date: Tue, 20 Oct 2015 15:33:35 +0530
Message-ID: <CAH21_vG7_hq5ZSEeJ3ExzY90WQ_TP9YuTcgypHN6953yeNrvjQ@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: anders@chargestorm.se
Cc: yocto@yoctoproject.org
Subject: Re: Nightly build and world build
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
X-List-Received-Date: Tue, 20 Oct 2015 10:03:40 -0000
Content-Type: multipart/alternative; boundary=001a113ecf9c0b3ed2052286602c

--001a113ecf9c0b3ed2052286602c
Content-Type: text/plain; charset=UTF-8

On 20-Oct-2015 11:49 am, "Anders Darander" <anders@chargestorm.se> wrote:
>
> Please don't top-post. I've reformatted the e-mail in my replly.
>
> * atulkumar singh <atul.singh008@gmail.com> [151020 05:22]:
>
> > On 19-Oct-2015 5:38 pm, "Martin Jansa" <martin.jansa@gmail.com> wrote:
>
> > > On Sat, Oct 17, 2015 at 08:01:59AM +0530, atulkumar singh wrote:
> > > > Hi All,
>
> > > > I am going through the mailing list and I found some communication
> > related
> > > > to world build and nightly build.
> > > > I even search in the documentation regarding the same but didn't
found
> > any
> > > > useful information regarding the same.
> > > > Can anyone please tel me what is nightly build and world build and
what
> > is
> > > > the difference between the same.
>
> > > My world builds are described here:
> > > http://www.openembedded.org/wiki/Bitbake_World_Status
>
> > Thanks for your reply.
> > But the link you mentioned has a status of world build for various
> > versions, while I am looking for what world build and nightly build
meant
> > for and what is the difference between them.
>
> Did you notice the Martin not only provided you with the link above, but
> also the line below:
>
> > > See link on first line.
>
> If you look at that line, you'll find the following link:
> http://www.openembedded.org/wiki/Bitbake_World_Status_Setup, which
> basically tells you what the world status builds are doing.
Thanks Anders for your help.
The link mentioned above has another link and I got the answer for world
build and regarding nightly build then I found the same over web.

Regards,
Atul
>
> Cheers,
> Anders
>
> --
> Anders Darander
> ChargeStorm AB / eStorm AB

--001a113ecf9c0b3ed2052286602c
Content-Type: text/html; charset=UTF-8

<p dir="ltr">On 20-Oct-2015 11:49 am, &quot;Anders Darander&quot; &lt;<a href="mailto:anders@chargestorm.se">anders@chargestorm.se</a>&gt; wrote:<br>
&gt;<br>
&gt; Please don&#39;t top-post. I&#39;ve reformatted the e-mail in my replly.<br>
&gt;<br>
&gt; * atulkumar singh &lt;<a href="mailto:atul.singh008@gmail.com">atul.singh008@gmail.com</a>&gt; [151020 05:22]:<br>
&gt;<br>
&gt; &gt; On 19-Oct-2015 5:38 pm, &quot;Martin Jansa&quot; &lt;<a href="mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; &gt; On Sat, Oct 17, 2015 at 08:01:59AM +0530, atulkumar singh wrote:<br>
&gt; &gt; &gt; &gt; Hi All,<br>
&gt;<br>
&gt; &gt; &gt; &gt; I am going through the mailing list and I found some communication<br>
&gt; &gt; related<br>
&gt; &gt; &gt; &gt; to world build and nightly build.<br>
&gt; &gt; &gt; &gt; I even search in the documentation regarding the same but didn&#39;t found<br>
&gt; &gt; any<br>
&gt; &gt; &gt; &gt; useful information regarding the same.<br>
&gt; &gt; &gt; &gt; Can anyone please tel me what is nightly build and world build and what<br>
&gt; &gt; is<br>
&gt; &gt; &gt; &gt; the difference between the same.<br>
&gt;<br>
&gt; &gt; &gt; My world builds are described here:<br>
&gt; &gt; &gt; <a href="http://www.openembedded.org/wiki/Bitbake_World_Status">http://www.openembedded.org/wiki/Bitbake_World_Status</a><br>
&gt;<br>
&gt; &gt; Thanks for your reply.<br>
&gt; &gt; But the link you mentioned has a status of world build for various<br>
&gt; &gt; versions, while I am looking for what world build and nightly build meant<br>
&gt; &gt; for and what is the difference between them.<br>
&gt;<br>
&gt; Did you notice the Martin not only provided you with the link above, but<br>
&gt; also the line below:<br>
&gt;<br>
&gt; &gt; &gt; See link on first line.<br>
&gt;<br>
&gt; If you look at that line, you&#39;ll find the following link:<br>
&gt; <a href="http://www.openembedded.org/wiki/Bitbake_World_Status_Setup">http://www.openembedded.org/wiki/Bitbake_World_Status_Setup</a>, which<br>
&gt; basically tells you what the world status builds are doing.<br>
Thanks Anders for your help.<br>
The link mentioned above has another link and I got the answer for world build and regarding nightly build then I found the same over web.</p>
<p dir="ltr">Regards,<br>
Atul<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Anders<br>
&gt;<br>
&gt; --<br>
&gt; Anders Darander<br>
&gt; ChargeStorm AB / eStorm AB<br>
</p>

--001a113ecf9c0b3ed2052286602c--
