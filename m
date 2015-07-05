Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74848E00A30; Sun,  5 Jul 2015 12:19:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-01.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A855FE009CC
	for <yocto@yoctoproject.org>; Sun,  5 Jul 2015 12:19:40 -0700 (PDT)
X-Halon-ID: d1bdc205-234a-11e5-8486-005056917a89
Authorized-sender: petter@technux.se
Received: from [192.168.1.82] (unknown [81.229.90.163])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Sun,  5 Jul 2015 21:19:54 +0200 (CEST)
Message-ID: <55998349.8080103@technux.se>
Date: Sun, 05 Jul 2015 21:19:37 +0200
From: =?windows-1252?Q?Petter_Mab=E4cker?= <petter@technux.se>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Jon Szymaniak <jon.szymaniak@gmail.com>, 
	Andrei Gherzan <andrei@gherzan.ro>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
	<CANge7vUQG3p3L7R5ZiZJJ62=zsYoGdjieiHwHktPD7yQ-ZsPag@mail.gmail.com>
In-Reply-To: <CANge7vUQG3p3L7R5ZiZJJ62=zsYoGdjieiHwHktPD7yQ-ZsPag@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Sun, 05 Jul 2015 19:19:44 -0000
Content-Type: multipart/alternative;
	boundary="------------070001080002050700060205"

--------------070001080002050700060205
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/26/2015 04:16 PM, Jon Szymaniak wrote:
> On Fri, Jun 26, 2015 at 4:31 AM, Burton, Ross <ross.burton@intel.com 
> <mailto:ross.burton@intel.com>> wrote:
>
>
>     On 26 June 2015 at 05:16, Jon Szymaniak <jon.szymaniak@gmail.com
>     <mailto:jon.szymaniak@gmail.com>> wrote:
>
>         GitHub provides this ability to download repository contents at
>         a specified changeset as a zip file. This is generally *much*
>         quicker
>         than fetching the entire git repository.
>
>
>     Github also can and will regenerate these tarballs whenever it
>     feels like it, so you'll need to periodically update the
>     checksums.  Obviously as existing developers will tend to have the
>     tarballs cached locally, it can be a while before this failure is
>     reported back.
>
>     A better solution might be to add support for "depth" to the git
>     fetcher, so you can grab just the commit you are interested in
>     instead of the entire repository.
>
>     Ross
>
>
> Hi Ross,
>
> Excellent point about the regeneration potentially yielding different 
> checksums.  I suppose they could change the compression level they use 
> at any moment in time... I'll look into adding that depth support to 
> the fetcher, as that doesn't look too hard at all.
>
> I'm open to other suggestions as well, as this was just a first stab 
> at it. I've been seeing that cloning this git repo containing binary 
> firmware blobs takes an absurd amount of time, if it even finishes at 
> all successfully.
>
> Cheers,
> Jon
>
>

Hi Jon,

Any news about this? I have also used a very similar changeset like you 
suggests (use .zip from github) ontop of meta-raspberrypi when building, 
to get rid of the annoying problem that it takes a very long time or 
even worse that you get a timeout.

My suggestion is to go for the .zip changeset at least until --depth=1 
is supported in the git fetcher.

@Andrei any comments from your side regarding this discussion?

BR,
Petter



--------------070001080002050700060205
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/26/2015 04:16 PM, Jon Szymaniak
      wrote:<br>
    </div>
    <blockquote
cite="mid:CANge7vUQG3p3L7R5ZiZJJ62=zsYoGdjieiHwHktPD7yQ-ZsPag@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">On Fri, Jun 26, 2015 at 4:31 AM,
            Burton, Ross <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:ross.burton@intel.com" target="_blank">ross.burton@intel.com</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div dir="ltr">
                <div class="gmail_extra"><span class=""><br>
                    <div class="gmail_quote">On 26 June 2015 at 05:16,
                      Jon Szymaniak <span dir="ltr">&lt;<a
                          moz-do-not-send="true"
                          href="mailto:jon.szymaniak@gmail.com"
                          target="_blank">jon.szymaniak@gmail.com</a>&gt;</span>
                      wrote:<br>
                      <blockquote class="gmail_quote" style="margin:0 0
                        0 .8ex;border-left:1px #ccc
                        solid;padding-left:1ex">
                        <div style="overflow:hidden">GitHub provides
                          this ability to download repository contents
                          at<br>
                          a specified changeset as a zip file. This is
                          generally *much* quicker<br>
                          than fetching the entire git repository.</div>
                      </blockquote>
                    </div>
                    <br>
                  </span>Github also can and will regenerate these
                  tarballs whenever it feels like it, so you'll need to
                  periodically update the checksums.  Obviously as
                  existing developers will tend to have the tarballs
                  cached locally, it can be a while before this failure
                  is reported back.</div>
                <div class="gmail_extra"><br>
                </div>
                <div class="gmail_extra">A better solution might be to
                  add support for "depth" to the git fetcher, so you can
                  grab just the commit you are interested in instead of
                  the entire repository. </div>
                <span class="HOEnZb"><font color="#888888">
                    <div class="gmail_extra"><br>
                    </div>
                    <div class="gmail_extra">Ross</div>
                  </font></span></div>
            </blockquote>
          </div>
          <br>
        </div>
        <div class="gmail_extra">Hi Ross,<br>
          <br>
        </div>
        <div class="gmail_extra">Excellent point about the regeneration
          potentially yielding different checksums.  I suppose they
          could change the compression level they use at any moment in
          time... I'll look into adding that depth support to the
          fetcher, as that doesn't look too hard at all.<br>
          <br>
        </div>
        <div class="gmail_extra">I'm open to other suggestions as well,
          as this was just a first stab at it. I've been seeing that
          cloning this git repo containing binary firmware blobs takes
          an absurd amount of time, if it even finishes at all
          successfully.<br>
          <br>
        </div>
        <div class="gmail_extra">Cheers,<br>
        </div>
        <div class="gmail_extra">Jon<br>
        </div>
      </div>
    </blockquote>
    <blockquote
cite="mid:CANge7vUQG3p3L7R5ZiZJJ62=zsYoGdjieiHwHktPD7yQ-ZsPag@mail.gmail.com"
      type="cite">
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    Hi Jon,<br>
    <br>
    Any news about this? I have also used a very similar changeset like
    you suggests (use .zip from github) ontop of meta-raspberrypi when
    building, to get rid of the annoying problem that it takes a very
    long time or even worse that you get a timeout.<br>
    <br>
    My suggestion is to go for the .zip changeset at least until
    --depth=1 is supported in the git fetcher.<br>
    <br>
    @Andrei any comments from your side regarding this discussion?<br>
    <br>
    BR,<br>
    Petter<br>
    <br>
     <br>
  </body>
</html>

--------------070001080002050700060205--
