Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web09.3149.1577485184049666522
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Dec 2019 14:19:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aYLfVwdk;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: xerofoify@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id j5so25462904qtq.9
        for <yocto@lists.yoctoproject.org>; Fri, 27 Dec 2019 14:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=D7lJ5RiZxDb9FLJN1DvjSoFqwA4QMfnL1TK47iik8hY=;
        b=aYLfVwdkeofcMf4I3qCCB5VcJ18vuwyTVmpydfJYRmW0p3tmpQlTWe9eYQ7VppTSam
         6zU6NnYWdhifkQNKx3vc+V/o5LhS03ZlxOZAqZtcpHFc+R3DZmDVH4IgnTs5CoYEGRDq
         5XwfeLsWz9x58RHacGqRLJGdF5QUcvNXJLxym7JQCsrsUWlIjTyaMFcQtRmrMBYdDQ0y
         GDl7KkYXQR/iiLz2kt82tAiJzS18v7DiqHz1gqrvXNgFB2s+0wIfZyEn7YW8P+eqFDMH
         UWazGpg3wYPNSXoVwXiAiESvPkelGIRGNCvPHzLABNAdTSYT4GeKWRDBtH8J2MjStufi
         W9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=D7lJ5RiZxDb9FLJN1DvjSoFqwA4QMfnL1TK47iik8hY=;
        b=VP7xhyNbuVzyWMjmS1IeAUv6BCwGPISL0XoggDH3x42RVw3NYfNDoVTFn0oTAqjJHO
         a7TApaA4B2m46NCtSrQFDzAkPCN1iSOlWyxrRrGVMR867KZ8sXFdfTs6KtAEVrmt/Ka5
         skT+aHpFDy/8Xu8POuwyEsqORYDa8T2pU6iBkV9T98xDpW8bE8/RxBagT96AeIIY/wku
         28G3gXFEuC7WppAlIx1yuvVVTrexPoehS0MgRT2oc/3EnQG6rZ6izOSWAHQ4oufVIfRl
         ckQgKWwXwLW3JJmmFA+Wxhxmom/mYWZ217FgsXYNVcxir5D2FTycZ5ladC3sfhkRozNu
         x72A==
X-Gm-Message-State: APjAAAXrvQfvb/C0JQ1oxYSGe1xbjogEviie0f6QVEuVFfPMQ0uqzZrb
	SMY4LveEGrhaeoTR+12oGS6jRga6Dw4=
X-Google-Smtp-Source: APXvYqwzjqpGr04xgx2awAe+XxPCYh3j0NkZyViRGLuSdlVolOAml6deAMCh5Dewaui4V/kZkhekkg==
X-Received: by 2002:aed:256f:: with SMTP id w44mr36947358qtc.331.1577485183098;
        Fri, 27 Dec 2019 14:19:43 -0800 (PST)
Return-Path: <xerofoify@gmail.com>
Received: from [192.168.1.103] (173-230-163-45.cable.teksavvy.com. [173.230.163.45])
        by smtp.gmail.com with ESMTPSA id z141sm10096639qkb.63.2019.12.27.14.19.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Dec 2019 14:19:42 -0800 (PST)
Subject: Re: [yocto] OEM supplied yocto image is impossible to work with
To: Alexander Kanavin <alex.kanavin@gmail.com>,
 Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
 yocto@lists.yoctoproject.org
References: <CAK4PFCUfSofY8JoK_QNhRA1ThTGVCKJM187BepSkXR4aypG-pQ@mail.gmail.com>
 <20191227201634.7lcmxythihq3nzvh@jholzmayr.localdomain>
 <CAK4PFCVcC3c3+FSO63BSLXyB6AqMwte8AOXqtu7fvwQzByR=8A@mail.gmail.com>
 <CANNYZj_-e2UaTdwxMpqn1+wrVJptz_1z+yhTSmfd256T7hBwEQ@mail.gmail.com>
From: "Nicholas Krause" <xerofoify@gmail.com>
Message-ID: <e5e55ee3-53c9-cea2-2680-2e609f9898b5@gmail.com>
Date: Fri, 27 Dec 2019 17:19:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CANNYZj_-e2UaTdwxMpqn1+wrVJptz_1z+yhTSmfd256T7hBwEQ@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------AF4C22B7897DB88A8853C234"
Content-Language: en-US

--------------AF4C22B7897DB88A8853C234
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 12/27/19 5:17 PM, Alexander Kanavin wrote:
> To me it seems that the SDK is the wrong kind of delivery to begin 
> with (as it is basically a frozen target image configuration without 
> the ability to customize the entire system build; Yocto SDKs are meant 
> for application development). What you need is a hardware BSP 
> meta-layer with ability to integrate the layer into your private build 
> configurations.
>
> If you can get the OEM to agree to this, we can discuss acceptance 
> criteria for such a layer.
>
> Alex
Alex,
Isn't that even mentioned is the manual as best practices? Odd a OEM 
would not
even follow that :(.

Nick
>
> On Sat, 28 Dec 2019 at 00:52, Kent Dorfman <kent.dorfman766@gmail.com 
> <mailto:kent.dorfman766@gmail.com>> wrote:
>
>     On 12/27/19, Josef Holzmayr <holzmayr@rsi-elektrotechnik.de
>     <mailto:holzmayr@rsi-elektrotechnik.de>> wrote:
>     > Hello Kent!
>
>     thanks for the followup!
>
>     > "close" is really somewhat relative here. The words that trigger my
>     > alarm here are "mission critical" and "aerospace". Anything that
>     I will
>     > write below is no legal advice, and not fit for any form of
>     > certification or audit. If these are your requirements, then
>     there are
>     > companies in the Yocto ecosystem that are willing to offer their
>     > services.
>
>     yeah...no legal advice is expected online...just a forum to vent
>     in, sometimes.
>
>
>
>     > BSPs are a constant cause of pain for us giving Yocto support
>     too. If
>     > a board vendor screws up, we get to pick up the pieces too many
>     times.
>
>     Yup...been there, done that.
>
>
>
>     > Little to add, besides... that it might have been a bad choice or
>     > negotiation, if you're only now learning that they want to
>     charge you
>     > additionally. Thats something we obviously can't help you with.
>
>     Yes, very bad choice in a field with no notably good choices.
>
>     > If they are not willing to hand out all sources plus metadata
>     layers,
>     > then thats a total red flag. Yet again, not something we could
>     change.
>
>     OK, to be clear, I have access to meta-layers, but a large percentage
>     of the BB files point to private git repos, and they don't volunteer
>     the gitshallow  for a repo unless I know enough to specifically ask
>     them for that repo, and assuming it's not something they are claiming
>     is IP.
>
>
>     > Sorry, I mean... didn't you request at least some form of eval
>     kit? Demo
>     > boards? To actually understand what you are buying?
>
>     bad decisions were made before I came on-board, and I did ask them for
>     access to the SDK before we took dilivery of hardware, and they balked
>     at that idea...which justifiably left me with an uneasy feeling.  Of
>     course I would have denied delivery if I had seen the state of their
>     reference SDK beforehand.
>
>
>     > Up to this point, yes, I can feel your frustration, but there's
>     little
>     > to say other than that you probably have a bad partnership by now.
>
>     Oh yeah, I think we're about to head into the "grudgingly conformant"
>     phase of the relationship.
>
>
>     > The cleanest without throwing away the whole build that you can
>     do is
>     > remove everything in the build directory besides "conf". Yet
>     there are
>     > probably two sides to your actual question. a "bitbake -c clean
>     > $YOURRECIPE" is the perfect equivalent to make clean, "bitbake
>     > $YOURRECIPE" equivalates to "make". Wiping tmp and sstate cache is
>     > pretty close to a full clean rebuild of the whole system, and no, it
>     > shall not break. If it does, there is either something wrong
>     with your
>     > build setup (can happen) or you hit a bug (happens less often, but
>     > happens too). The second side is actually running a full system
>     rebuild,
>     > which includes the complete build setup. Actually there is no
>     > Yocto-inhernt way to do it, as different people have different
>     needs -
>     > and nobody managed a one size fits all solution until now. You
>     can look
>     > at the autobuilder as provided by the Yocto Project, and at the
>     various
>     > approaches here [1];
>
>     I empty the conf/ sstate_cache/ and tmp/ directories and try to do a
>     devtool build-image, but failures ensue based on it trying to load
>     from private git repos, and some jibberish about locked signatures not
>     matching.  I just need to know that I'm reverting to a source level
>     build "the right way".
>
>
>     >> 2) related to above, yocto needs a much better description of the
>     >> expected directory tree within a project.
>     >
>     > Within a project? Could you please elaborate?
>
>     They provided and "ark" embedded SDK, that was presumably generated
>     from yocto.  I'm not differentiating between projects because there is
>     only one, so I'm mean within the SDK directory tree.
>
>
>     > bitbake and devtool can and should be used side by side. Running
>     bitbake
>     > manually, as you put it, is the definitively primary way of doing
>     > things. So if that eeks out for, there is probably something strange
>     > with your setup. If you can provide a more extensive log or error
>     > message, we will happily...erm, at least honestly try to help.
>
>     Thanks.  bitbake fails when run manually, telling me that there is a
>     "." or null path element when I know for a fact that there is not one.
>     Apparently when devtool calls bitbake it sets up the path correctly,
>     but when it is called manually (it's not in the shell path), it
>     doesn't like the PATH var.  There are some online references to this
>     problem but no authoritative solution or description of why.
>
>
>
>     >> 5) a big area that seems to be lacking is the ability to
>     inquire in a
>     >> yocto build as to what is included in it.  This is especially
>     >> important if the responsible party didn't actually create the
>     build,
>     >> as is our case.  We're left with trying to guess what the OEM
>     did, and
>     >> why.
>     >
>     > Now this is certainly not true. Even in the utmost default setup, a
>     > manifest file will be created along the image which tells you which
>     > packages including version and license that went into it.
>
>     A manifest shows packages, not layers/recipes/packages, nor a
>     breakdown of what is included as a consequence of what layers or
>     recipes it exists in.  This makes trying to modify a build that
>     someone else has created, more difficult.
>
>
>     > bitbake -g $TARGETOFYOURCHOICE will give you a dot file to
>     inspect the
>     > complete dependency graph of your chosen target. This is a bit
>     too much
>     > in-depth at times, but extremely powerful.
>
>     TARGETOFYOURCHOICE?  What is the glue between "target-name" and
>     available meta-layers and recipes?
>
>
>     > And last but not least, its a good practise to have buildhistory
>     enabled
>     > [2]. This offers extremely detailed information about each and every
>     > package and dependency that went into your build, down to each
>     single
>     > file, package size,...
>
>     Agreed.  I think their SDK has it enabled by default but I need to
>     check.
>
>
>
>     > Including pre-produced blobs in a Yocto build is not pretty, but
>     often
>     > handy or impossible to avoid. Please see [3] for the
>     documentation on
>     > it.
>
>     Well, unless they give us git access I don't see any way around it.
>
>
>     > In a nutshell: whenever somebody hands you a binary build,
>     without the
>     > corresponding set of sources and metadata, then you are out of
>     luck and
>     > in for a lot of pain. That exactly the way of how to NOT use
>     yocto when
>     > selling hardware. Some do, and unfortunately we, as the Yocto
>     community
>     > can't do much about it, other than try and help the folks who
>     struggle
>     > with it. And go buy our hardware in another place.
>
>     I wish I did have options, but if you know business, they are all
>     about free, as long as it doesn't pose any encumberance on them.  I
>     need to see just how far the OEM is will to go, and if not far enough,
>     then I've to evaluate other options.
>
>
>     > With that, I hope I could give a somewhat helpful but certainly
>     > honest answer.
>
>
>     Gracias, Amigo!
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>
>     View/Reply Online (#47827):
>     https://lists.yoctoproject.org/g/yocto/message/47827
>     Mute This Topic: https://lists.yoctoproject.org/mt/69288358/1686489
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>]
>     -=-=-=-=-=-=-=-=-=-=-=-
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47828): https://lists.yoctoproject.org/g/yocto/message/47828
> Mute This Topic: https://lists.yoctoproject.org/mt/69288358/3618653
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [xerofoify@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------AF4C22B7897DB88A8853C234
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/27/19 5:17 PM, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANNYZj_-e2UaTdwxMpqn1+wrVJptz_1z+yhTSmfd256T7hBwEQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>To me it seems that the SDK is the wrong kind of delivery
          to begin with (as it is basically a frozen target image
          configuration without the ability to customize the entire
          system build; Yocto SDKs are meant for application
          development). What you need is a hardware BSP meta-layer with
          ability to integrate the layer into your private build
          configurations. </div>
        <div><br>
        </div>
        <div>If you can get the OEM to agree to this, we can discuss
          acceptance criteria for such a layer.</div>
        <div><br>
        </div>
        <div>Alex</div>
      </div>
    </blockquote>
    Alex,<br>
    Isn't that even mentioned is the manual as best practices? Odd a OEM
    would not <br>
    even follow that :(.<br>
    <br>
    Nick <br>
    <blockquote type="cite"
cite="mid:CANNYZj_-e2UaTdwxMpqn1+wrVJptz_1z+yhTSmfd256T7hBwEQ@mail.gmail.com"><br>
      <div class="gmail_quote">
        <div class="gmail_attr" dir="ltr">On Sat, 28 Dec 2019 at 00:52,
          Kent Dorfman &lt;<a href="mailto:kent.dorfman766@gmail.com"
            moz-do-not-send="true">kent.dorfman766@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;padding-left:1ex;border-left-color:rgb(204,204,204);border-left-width:1px;border-left-style:solid">On
          12/27/19, Josef Holzmayr &lt;<a
            href="mailto:holzmayr@rsi-elektrotechnik.de" target="_blank"
            moz-do-not-send="true">holzmayr@rsi-elektrotechnik.de</a>&gt;
          wrote:<br>
          &gt; Hello Kent!<br>
          <br>
          thanks for the followup!<br>
          <br>
          &gt; "close" is really somewhat relative here. The words that
          trigger my<br>
          &gt; alarm here are "mission critical" and "aerospace".
          Anything that I will<br>
          &gt; write below is no legal advice, and not fit for any form
          of<br>
          &gt; certification or audit. If these are your requirements,
          then there are<br>
          &gt; companies in the Yocto ecosystem that are willing to
          offer their<br>
          &gt; services.<br>
          <br>
          yeah...no legal advice is expected online...just a forum to
          vent in, sometimes.<br>
          <br>
          <br>
          <br>
          &gt; BSPs are a constant cause of pain for us giving Yocto
          support too. If<br>
          &gt; a board vendor screws up, we get to pick up the pieces
          too many times.<br>
          <br>
          Yup...been there, done that.<br>
          <br>
          <br>
          <br>
          &gt; Little to add, besides... that it might have been a bad
          choice or<br>
          &gt; negotiation, if you're only now learning that they want
          to charge you<br>
          &gt; additionally. Thats something we obviously can't help you
          with.<br>
          <br>
          Yes, very bad choice in a field with no notably good choices.<br>
          <br>
          &gt; If they are not willing to hand out all sources plus
          metadata layers,<br>
          &gt; then thats a total red flag. Yet again, not something we
          could change.<br>
          <br>
          OK, to be clear, I have access to meta-layers, but a large
          percentage<br>
          of the BB files point to private git repos, and they don't
          volunteer<br>
          the gitshallow  for a repo unless I know enough to
          specifically ask<br>
          them for that repo, and assuming it's not something they are
          claiming<br>
          is IP.<br>
          <br>
          <br>
          &gt; Sorry, I mean... didn't you request at least some form of
          eval kit? Demo<br>
          &gt; boards? To actually understand what you are buying?<br>
          <br>
          bad decisions were made before I came on-board, and I did ask
          them for<br>
          access to the SDK before we took dilivery of hardware, and
          they balked<br>
          at that idea...which justifiably left me with an uneasy
          feeling.  Of<br>
          course I would have denied delivery if I had seen the state of
          their<br>
          reference SDK beforehand.<br>
          <br>
          <br>
          &gt; Up to this point, yes, I can feel your frustration, but
          there's little<br>
          &gt; to say other than that you probably have a bad
          partnership by now.<br>
          <br>
          Oh yeah, I think we're about to head into the "grudgingly
          conformant"<br>
          phase of the relationship.<br>
          <br>
          <br>
          &gt; The cleanest without throwing away the whole build that
          you can do is<br>
          &gt; remove everything in the build directory besides "conf".
          Yet there are<br>
          &gt; probably two sides to your actual question. a "bitbake -c
          clean<br>
          &gt; $YOURRECIPE" is the perfect equivalent to make clean,
          "bitbake<br>
          &gt; $YOURRECIPE" equivalates to "make". Wiping tmp and sstate
          cache is<br>
          &gt; pretty close to a full clean rebuild of the whole system,
          and no, it<br>
          &gt; shall not break. If it does, there is either something
          wrong with your<br>
          &gt; build setup (can happen) or you hit a bug (happens less
          often, but<br>
          &gt; happens too). The second side is actually running a full
          system rebuild,<br>
          &gt; which includes the complete build setup. Actually there
          is no<br>
          &gt; Yocto-inhernt way to do it, as different people have
          different needs -<br>
          &gt; and nobody managed a one size fits all solution until
          now. You can look<br>
          &gt; at the autobuilder as provided by the Yocto Project, and
          at the various<br>
          &gt; approaches here [1];<br>
          <br>
          I empty the conf/ sstate_cache/ and tmp/ directories and try
          to do a<br>
          devtool build-image, but failures ensue based on it trying to
          load<br>
          from private git repos, and some jibberish about locked
          signatures not<br>
          matching.  I just need to know that I'm reverting to a source
          level<br>
          build "the right way".<br>
          <br>
          <br>
          &gt;&gt; 2) related to above, yocto needs a much better
          description of the<br>
          &gt;&gt; expected directory tree within a project.<br>
          &gt;<br>
          &gt; Within a project? Could you please elaborate?<br>
          <br>
          They provided and "ark" embedded SDK, that was presumably
          generated<br>
          from yocto.  I'm not differentiating between projects because
          there is<br>
          only one, so I'm mean within the SDK directory tree.<br>
          <br>
          <br>
          &gt; bitbake and devtool can and should be used side by side.
          Running bitbake<br>
          &gt; manually, as you put it, is the definitively primary way
          of doing<br>
          &gt; things. So if that eeks out for, there is probably
          something strange<br>
          &gt; with your setup. If you can provide a more extensive log
          or error<br>
          &gt; message, we will happily...erm, at least honestly try to
          help.<br>
          <br>
          Thanks.  bitbake fails when run manually, telling me that
          there is a<br>
          "." or null path element when I know for a fact that there is
          not one.<br>
          Apparently when devtool calls bitbake it sets up the path
          correctly,<br>
          but when it is called manually (it's not in the shell path),
          it<br>
          doesn't like the PATH var.  There are some online references
          to this<br>
          problem but no authoritative solution or description of why.<br>
          <br>
          <br>
          <br>
          &gt;&gt; 5) a big area that seems to be lacking is the ability
          to inquire in a<br>
          &gt;&gt; yocto build as to what is included in it.  This is
          especially<br>
          &gt;&gt; important if the responsible party didn't actually
          create the build,<br>
          &gt;&gt; as is our case.  We're left with trying to guess what
          the OEM did, and<br>
          &gt;&gt; why.<br>
          &gt;<br>
          &gt; Now this is certainly not true. Even in the utmost
          default setup, a<br>
          &gt; manifest file will be created along the image which tells
          you which<br>
          &gt; packages including version and license that went into it.<br>
          <br>
          A manifest shows packages, not layers/recipes/packages, nor a<br>
          breakdown of what is included as a consequence of what layers
          or<br>
          recipes it exists in.  This makes trying to modify a build
          that<br>
          someone else has created, more difficult.<br>
          <br>
          <br>
          &gt; bitbake -g $TARGETOFYOURCHOICE will give you a dot file
          to inspect the<br>
          &gt; complete dependency graph of your chosen target. This is
          a bit too much<br>
          &gt; in-depth at times, but extremely powerful.<br>
          <br>
          TARGETOFYOURCHOICE?  What is the glue between "target-name"
          and<br>
          available meta-layers and recipes?<br>
          <br>
          <br>
          &gt; And last but not least, its a good practise to have
          buildhistory enabled<br>
          &gt; [2]. This offers extremely detailed information about
          each and every<br>
          &gt; package and dependency that went into your build, down to
          each single<br>
          &gt; file, package size,...<br>
          <br>
          Agreed.  I think their SDK has it enabled by default but I
          need to check.<br>
          <br>
          <br>
          <br>
          &gt; Including pre-produced blobs in a Yocto build is not
          pretty, but often<br>
          &gt; handy or impossible to avoid. Please see [3] for the
          documentation on<br>
          &gt; it.<br>
          <br>
          Well, unless they give us git access I don't see any way
          around it.<br>
          <br>
          <br>
          &gt; In a nutshell: whenever somebody hands you a binary
          build, without the<br>
          &gt; corresponding set of sources and metadata, then you are
          out of luck and<br>
          &gt; in for a lot of pain. That exactly the way of how to NOT
          use yocto when<br>
          &gt; selling hardware. Some do, and unfortunately we, as the
          Yocto community<br>
          &gt; can't do much about it, other than try and help the folks
          who struggle<br>
          &gt; with it. And go buy our hardware in another place.<br>
          <br>
          I wish I did have options, but if you know business, they are
          all<br>
          about free, as long as it doesn't pose any encumberance on
          them.  I<br>
          need to see just how far the OEM is will to go, and if not far
          enough,<br>
          then I've to evaluate other options.<br>
          <br>
          <br>
          &gt; With that, I hope I could give a somewhat helpful but
          certainly<br>
          &gt; honest answer.<br>
          <br>
          <br>
          Gracias, Amigo!<br>
          -=-=-=-=-=-=-=-=-=-=-=-<br>
          Links: You receive all messages sent to this group.<br>
          <br>
          View/Reply Online (#47827): <a
            href="https://lists.yoctoproject.org/g/yocto/message/47827"
            target="_blank" rel="noreferrer" moz-do-not-send="true">https://lists.yoctoproject.org/g/yocto/message/47827</a><br>
          Mute This Topic: <a
            href="https://lists.yoctoproject.org/mt/69288358/1686489"
            target="_blank" rel="noreferrer" moz-do-not-send="true">https://lists.yoctoproject.org/mt/69288358/1686489</a><br>
          Group Owner: <a
            href="mailto:yocto%2Bowner@lists.yoctoproject.org"
            target="_blank" moz-do-not-send="true">yocto+owner@lists.yoctoproject.org</a><br>
          Unsubscribe: <a
            href="https://lists.yoctoproject.org/g/yocto/unsub"
            target="_blank" rel="noreferrer" moz-do-not-send="true">https://lists.yoctoproject.org/g/yocto/unsub</a> 
          [<a href="mailto:alex.kanavin@gmail.com" target="_blank"
            moz-do-not-send="true">alex.kanavin@gmail.com</a>]<br>
          -=-=-=-=-=-=-=-=-=-=-=-<br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47828): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47828">https://lists.yoctoproject.org/g/yocto/message/47828</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/69288358/3618653">https://lists.yoctoproject.org/mt/69288358/3618653</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------AF4C22B7897DB88A8853C234--
