Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web09.4662.1603241311007475180
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 17:48:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uQoOzb8v;
 spf=pass (domain: gmail.com, ip: 209.85.166.179, mailfrom: ticotimo@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id n5so706248ile.7
        for <yocto@lists.yoctoproject.org>; Tue, 20 Oct 2020 17:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=2O0jDJ/MkxrpyGr47W+4d8p8FcJixz4UY8+17DNJ1Cs=;
        b=uQoOzb8vfpEr8cjC+Q4p0mh9Gg2sG7Ke4ROlKvwcU9s9iTjCQVKnszuGmWvs4HxpZQ
         Z1rXTqsNgGtwMHTc4r2yfkYSKMPORy1aKrrkGqS/PFLy5xHvwu2LDAGg/Puf65URjSfc
         ouco463TYFZ9w+yXze9YMckOv6uuQnsDfHy35q8yg8IQFN04xKPgOIhz7G08w1p6wKSa
         +pQ1OCYfoYXW5Ddok70pVmcSPgFTG3K5STSwm7B6E03cu9Fhd1IOxanpExhHIr71GWMi
         /FUpavl5Q9h/pe+AKTHsNSnlWQgKLeL16CkUKYPoXUVScj93hRc0WY/8t9DXo+Fa0C4Z
         mTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2O0jDJ/MkxrpyGr47W+4d8p8FcJixz4UY8+17DNJ1Cs=;
        b=Ht3V+mH/KjKUeHS59gY59OM/22+RtkXwNQI85slYO2mxn8pL6kQzT2emPMlmeBi4Jg
         KmqeBPeLRV0FLE7GR8P7Oer4/T3TiSzKiGhHfYAjeDfgqDqIrgfLvPu/pFO9qYp8YHgC
         vi1XXqUnSLnAfTkmgRbBAq6azGKg2aZtc7JDnuBeIcAQX1Ld0hXtq4vzaSs3SEf0ma+F
         3WA7QAuXf/WBsQ3z0mGj1CRvFxshU2tAkPNw+KdkrJnvisunzng53TBpZWcIdkvBAac/
         WdxVG5RwTrpuDUxyvrHuYl0+/bukEnUS8kJ8WLBEvn82v4gPQ9cvHh4aJP7dLvId/pwp
         6xaw==
X-Gm-Message-State: AOAM533L14OXelTqOxZCbVdjJ0FbWGrqBImo6tajhXNjOVFcs/d3QfZ6
	GwOjDU0AhXgVMUf7pCUD0XyjPxc8bRGr8tKsK+C8AIpzn5g=
X-Google-Smtp-Source: ABdhPJzFHp6assqwk9wWLOAsQe/NzCdGsat9sqFKjZvwPbmSfa/ymR8kVNSMNEFAVaKHXzzwmfQMGA3x6GhIK1jqTvo=
X-Received: by 2002:a92:da0e:: with SMTP id z14mr451136ilm.151.1603241310150;
 Tue, 20 Oct 2020 17:48:30 -0700 (PDT)
MIME-Version: 1.0
From: "Tim Orling" <ticotimo@gmail.com>
Date: Tue, 20 Oct 2020 17:48:19 -0700
Message-ID: <CANx9H-DFtcdnZwDqHEPg4t5ySyJe++KS8hO9QDFX5r31KLz3Ww@mail.gmail.com>
Subject: Let me tell you how I really feel. Zero filter. If you need meta-python2, you need to become a maintainer. Immediately. Period.
To: yocto@lists.yoctoproject.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org" <Openembedded-devel@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000c7e5e805b223b489"

--000000000000c7e5e805b223b489
Content-Type: text/plain; charset="UTF-8"

I have absolutely no need for python2, I made this abundantly clear when I
created the meta-python2 layer.

If you depend upon continuing support of python2 via the meta-python2
layer, this is your call to arms.

I was originally intending to abdicate any support after the 3.1 "dunfell"
release, but managed to somehow continue supporting it into the crest of
the 3.2 "gatesgarth" release.

I will stop all support and actively refuse lo respond to any emails and
this layer will be dead and I have zero care in the world that it stops
being useful. I do not use it. I do not depend upon it. You are not paying
me to do this. You cannot pay me enough to do this. Period. Support
yourself.

If this is not clear enough, I am happy to have a virtual video call with
you that you will not like.

--moto-timo

--000000000000c7e5e805b223b489
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have absolutely no need for python2, I made this abundan=
tly clear when I created the meta-python2 layer.<div><br></div><div>If you =
depend upon continuing support of python2 via the meta-python2 layer, this =
is your call to arms.</div><div><br></div><div>I was originally intending t=
o abdicate any support after the 3.1 &quot;dunfell&quot; release, but manag=
ed to somehow continue supporting it into the crest of the 3.2 &quot;gatesg=
arth&quot; release.</div><div><br></div><div>I will stop all support and ac=
tively refuse lo respond to any emails and this layer will be dead and I ha=
ve zero care in the world that it stops being useful. I do not use it. I do=
 not depend upon it. You are not paying me to do this. You cannot pay me en=
ough to do this. Period. Support yourself.</div><div><br></div><div>If this=
 is not clear enough, I am happy to have a virtual video call with you that=
 you will not like.</div><div><br></div><div>--moto-timo</div></div>

--000000000000c7e5e805b223b489--
