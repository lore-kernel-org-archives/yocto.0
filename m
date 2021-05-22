Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.1430.1621707686229556895
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 May 2021 11:21:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@oripessach-com.20150623.gappssmtp.com header.s=20150623 header.b=jrKY0UqW;
 spf=none, err=permanent DNS error (domain: oripessach.com, ip: 209.85.218.44, mailfrom: mail@oripessach.com)
Received: by mail-ej1-f44.google.com with SMTP id lg14so35324107ejb.9
        for <yocto@lists.yoctoproject.org>; Sat, 22 May 2021 11:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oripessach-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=SNMYenJjGXZX3q3E9tISGLEZ2uVMHgFYbgMg3S2Wg2M=;
        b=jrKY0UqW+PB4KuZumDXoQ7CgAdJYdItTRGon78wtjy70d0ykQT5GOSy+FjJc3p/UEJ
         kh6GeSaRRpEBf6VfDc4PI5G0H5dj0dQamL7qVhdNvQQ84/Mm7lN7aa3xyiPxTfxqtXWl
         RPLJ5saXb71lRjr2ut8jSHc7AoZKCxRBDMmKDkolphABsfyis67bhtAzBLqk08vXxUjs
         MehX9HLPgZvAlrMSOFLoHfhEifY+1RcAO96N8TCy1CAHa8WNQqsoMUPETBrV510Yte6k
         cUGgaR9LbCXUcNjjPj7OKpxSsPmEqz/F/Cv5ucKFRtlZt6fIvUiFzIjPdp7wy+XEIIV+
         rYyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=SNMYenJjGXZX3q3E9tISGLEZ2uVMHgFYbgMg3S2Wg2M=;
        b=rF6TSMVRPob7OzUcVsOAF9mXr9qKExkkvso0beb8Ex+QYoiGqrjUlK5ofoVs8jOdnN
         cdjmncHdAghlP3JVCpijO3fW2nfivnNkdoL+Szn7BTuOQz6r5G8MFAs37EEoEBE64LeY
         PcIgIyWVi0w6PtR+hbRkbf08l9V23DOQqsVE5YcmDEyxuYDcNNRIL92BiCqt+Nb76xnz
         GakY/SArutjukSny5PvEZ4djH+mgW253lHDecbQbzlbWH+q4hQhPIfjF+qs0880cINzF
         4YsAB+c4MdM55Q6cEmmMxaDEdKAHQqI4IIBIRo4MZ2NGMPOfkQP1p51yS0ywbHipuYvS
         Dr/w==
X-Gm-Message-State: AOAM530QiKwtohyWa8mY1t66nT7M830TkInLM3TQq6hVLohWogl4kD6R
	B1IMdXJhD+16WwQwibOcA4SnUXeeidWwVol3qU4c3LAmGiRPA74Z
X-Google-Smtp-Source: ABdhPJzsaBVxaZsikzzvkE8svorUaBFdajByRu0eCgfQF+312l0omi2hJ8c4Gy3DefQiiygjS77aNlFaMUjJpH9BM+Q=
X-Received: by 2002:a17:906:c14c:: with SMTP id dp12mr15901905ejc.312.1621707684239;
 Sat, 22 May 2021 11:21:24 -0700 (PDT)
MIME-Version: 1.0
From: "Ori Pessach" <mail@oripessach.com>
Date: Sat, 22 May 2021 12:20:58 -0600
Message-ID: <CAJekvNRroTdBZQR0Yiw5_OFSjpLMkFMcwnp3R2zG_MBHaBCM7w@mail.gmail.com>
Subject: /proc/vmcore not created with CONFIG_PROC_VMCORE=y
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000072f1e205c2ef3e64"

--00000000000072f1e205c2ef3e64
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to enable kdump on an intel x86_64 system, and while kexec boots
the crash kernel (I use the same kernel image for the system and crash
kernel) makedumpfile fails, apparently because it can't find /proc/vmcore.

My understanding is that vmcore should be found (and empty) in the system
kernel, and populated in the crash kernel, but it's not found in either as
far as I can tell.

/proc/config.gz shows that CONFIG_PROC_VMCORE Is set to 'y' so I'm not sure
what's going on. Any ideas on how to solve this?

Thanks,

Ori Pessach

--00000000000072f1e205c2ef3e64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m trying to ena=
ble kdump on an intel x86_64 system, and while kexec boots the crash kernel=
 (I use the same kernel image for the system and crash kernel) makedumpfile=
 fails, apparently because it can&#39;t find /proc/vmcore. <br></div><div><=
br></div><div>My understanding is that vmcore should be found (and empty) i=
n the system kernel, and populated in the crash kernel, but it&#39;s not fo=
und in either as far as I can tell.</div><div><br></div><div>/proc/config.g=
z shows that CONFIG_PROC_VMCORE Is set to &#39;y&#39; so I&#39;m not sure w=
hat&#39;s going on. Any ideas on how to solve this?</div><div><br></div><di=
v>Thanks,</div><div><br></div><div>Ori Pessach<br></div></div>

--00000000000072f1e205c2ef3e64--
