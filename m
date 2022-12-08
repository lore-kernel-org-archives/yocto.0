Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8949C3A5A7
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 16:18:57 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.18643.1670516329112768097
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 08:18:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: fede.evol@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id z92so2488344ede.1
        for <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 08:18:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tnIy8j9bXJoEMDu/lYr15/8fP3AX0JuIGxLi1nr/oIU=;
        b=jodQB/c24hlN0rbTg7GZ0qpDjskxnCA8RKp0LR7jHYdqQCk2NeMsxSa5zfGirEft+Q
         5OZvcDEpilhewnbubvTo1hytvJezlhu3M7a4Q7fouohK+xjBqD6/gx2CH7QVvQ7r5du1
         Bu+MPj4/TYBViPJLI23kc5BF7UOBhg9XesnnHhwQoAvv9iY+5dMMlMOBrFGob8rHp2lB
         v7waLpKh9gTfeWOBs6OI1naFGvznOXFtVelfA1JXNth/fUvoYGWwmn9YPBVqjo8K6SM9
         2nWmcf1I31aIKH1+PoUUTWEGJWxpVS1lQBUvA0j5B4YLQzEcs9htuW1NoYug4wf2ADga
         Ny+Q==
X-Gm-Message-State: ANoB5pnUbelZq6FxMkEjHx5nDcUOO1T5g7AMYkovUk/mm7CXUzEPDg/U
	SyKO9nm4z9lwaPNEFTPzFsM9u/aVdZjv+b6yYYE=
X-Google-Smtp-Source: AA0mqf4oLYb7Ot8p0zzmYhTFdZyEUEImZXN7Gtfs0cebsQGL4CRxNaFXGDXLLP/MNnDmVl83KNwfrlsRFGuHrTaae8I=
X-Received: by 2002:a05:6402:5021:b0:460:5340:d522 with SMTP id
 p33-20020a056402502100b004605340d522mr14049853eda.87.1670516327390; Thu, 08
 Dec 2022 08:18:47 -0800 (PST)
MIME-Version: 1.0
References: <CAOf5uwmnnryGOSEDqkgA8g0ocn7aPPbv_bnXjBjOCE3FJpGTOw@mail.gmail.com>
 <CAOf5uwmOQPv0rWF2zwwMdi2Tkvi6syzU9TtmbxPL7Cqo5OEtEg@mail.gmail.com> <CAOf5uwkcLyXxRZ1gN7xQONkHHOLsikyfnOM3wA1Rg8OqmJMLUQ@mail.gmail.com>
In-Reply-To: <CAOf5uwkcLyXxRZ1gN7xQONkHHOLsikyfnOM3wA1Rg8OqmJMLUQ@mail.gmail.com>
From: Federico Pellegrin <fede@evolware.org>
Date: Thu, 8 Dec 2022 17:18:36 +0100
Message-ID: <CAM6O0ZgVUhm4AMjT6wb4o_hh3Synt4Yn7zezUmnU1ZB=TFEj3A@mail.gmail.com>
Subject: Re: [yocto] open ssh dunfell unable to login
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004920fd05ef53640f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 16:18:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58760

--0000000000004920fd05ef53640f
Content-Type: text/plain; charset="UTF-8"

Hi Michael,
Sorry for the maybe obvious remark (and cannot find the original post if
maybe you gave more details) but: did you enable in openssh daemon
configuration to allow for root login?

By default that is not permitted, in /etc/ssh/sshd_config you have:

#PermitRootLogin prohibit-password

(it is usually commented, but shows the default)
Which you should in case replace with:

PermitRootLogin yes

This can be also managed on yocto level with the feature "debug-tweaks" or
"allow-root-login".

Cheers,
Federico


Il giorno gio 8 dic 2022 alle ore 15:21 Michael Nazzareno Trimarchi <
michael@amarulasolutions.com> ha scritto:

> Hi
>
> On Mon, Nov 14, 2022 at 5:47 PM Michael Nazzareno Trimarchi
> <michael@amarulasolutions.com> wrote:
> >
> > Hi all
> >
> > testing the openssh-server and I set root password but I'm enable to
> login
> >
> > server side
> > /usr/sbin/sshd -d -D
> >
>
> I basically solve it with dropbear instead of openssh. Has anybody
> found the same problem on dunfell?
>
> Michael
>
> > debug1: sshd version OpenSSH_8.2, OpenSSL 1.1.1q 5 Jul 2022
> > debug1: private host key #0: ssh-rsa
> > SHA256:1endrZLJnyyoE2x+MfLB3JIpEqgzCrORriOhvSSN2HM
> > debug1: private host key #1: ecdsa-sha2-nistp256
> > SHA256:1Ivo0c/GWF22iwwEAc0D+E79qSH/0eTxDH0pldsfuk4
> > debug1: private host key #2: ssh-ed25519
> > SHA256:CEHX4ATsgGL4De/rJlyNmwqqCk0Ewf1r4jU4spHTP88
> > debug1: rexec_argv[0]='/usr/sbin/sshd'
> > debug1: rexec_argv[1]='-d'
> > debug1: rexec_argv[2]='-D'
> > debug1: Set /proc/self/oom_score_adj from 0 to -1000
> > debug1: Bind to port 22 on 0.0.0.0.
> > Server listening on 0.0.0.0 port 22.
> > debug1: Bind to port 22 on ::.
> > Server listening on :: port 22.
> > debug1: Server will not fork when running in debugging mode.
> > debug1: rexec start in 5 out 5 newsock 5 pipe -1 sock 8
> > debug1: sshd version OpenSSH_8.2, OpenSSL 1.1.1q 5 Jul 2022
> > debug1: private host key #0: ssh-rsa
> > SHA256:1endrZLJnyyoE2x+MfLB3JIpEqgzCrORriOhvSSN2HM
> > debug1: private host key #1: ecdsa-sha2-nistp256
> > SHA256:1Ivo0c/GWF22iwwEAc0D+E79qSH/0eTxDH0pldsfuk4
> > debug1: private host key #2: ssh-ed25519
> > SHA256:CEHX4ATsgGL4De/rJlyNmwqqCk0Ewf1r4jU4spHTP88
> > debug1: inetd sockets after dupping: 3, 3
> > Connection from 192.168.1.8 port 59662 on 192.168.1.3 port 22 rdomain ""
> > debug1: Local version string SSH-2.0-OpenSSH_8.2
> > debug1: Remote protocol version 2.0, remote software version
> > OpenSSH_8.2p1 Ubuntu-4ubuntu0.5
> > debug1: match: OpenSSH_8.2p1 Ubuntu-4ubuntu0.5 pat OpenSSH* compat
> 0x04000000
> > debug1: permanently_set_uid: 997/997 [preauth]
> > debug1: list_hostkey_types:
> > rsa-sha2-512,rsa-sha2-256,ssh-rsa,ecdsa-sha2-nistp256,ssh-ed25519
> > [preauth]
> > debug1: SSH2_MSG_KEXINIT sent [preauth]
> > debug1: SSH2_MSG_KEXINIT received [preauth]
> > debug1: kex: algorithm: curve25519-sha256 [preauth]
> > debug1: kex: host key algorithm: ecdsa-sha2-nistp256 [preauth]
> > debug1: kex: client->server cipher: chacha20-poly1305@openssh.com MAC:
> > <implicit> compression: none [preauth]
> > debug1: kex: server->client cipher: chacha20-poly1305@openssh.com MAC:
> > <implicit> compression: none [preauth]
> > debug1: expecting SSH2_MSG_KEX_ECDH_INIT [preauth]
> > debug1: rekey out after 134217728 blocks [preauth]
> > debug1: SSH2_MSG_NEWKEYS sent [preauth]
> > debug1: Sending SSH2_MSG_EXT_INFO [preauth]
> > debug1: expecting SSH2_MSG_NEWKEYS [preauth]
> > debug1: SSH2_MSG_NEWKEYS received [preauth]
> > debug1: rekey in after 134217728 blocks [preauth]
> > debug1: KEX done [preauth]
> > debug1: userauth-request for user root service ssh-connection method
> > none [preauth]
> > debug1: attempt 0 failures 0 [preauth]
> > debug1: monitor_read_log: child log fd closed
> > debug1: do_cleanup
> > debug1: Killing privsep child 873
> >
> > Client side
> > ssh -vvv -o PreferredAuthentications=password root@192.168.1.3
> >
> > OpenSSH_8.2p1 Ubuntu-4ubuntu0.5, OpenSSL 1.1.1f 31 Mar 2020
> > debug1: Reading configuration data /home/suniel/.ssh/config
> > debug1: Reading configuration data /etc/ssh/ssh_config
> > debug1: /etc/ssh/ssh_config line 19: include
> > /etc/ssh/ssh_config.d/*.conf matched no files
> > debug1: /etc/ssh/ssh_config line 21: Applying options for *
> > debug2: resolve_canonicalize: hostname 192.168.1.3 is address
> > debug2: ssh_connect_direct
> > debug1: Connecting to 192.168.1.3 [192.168.1.3] port 22.
> > debug1: Connection established.
> > debug1: identity file /home/suniel/.ssh/id_rsa type 0
> > debug1: identity file /home/suniel/.ssh/id_rsa-cert type -1
> > debug1: identity file /home/suniel/.ssh/id_dsa type -1
> > debug1: identity file /home/suniel/.ssh/id_dsa-cert type -1
> > debug1: identity file /home/suniel/.ssh/id_ecdsa type -1
> > debug1: identity file /home/suniel/.ssh/id_ecdsa-cert type -1
> > debug1: identity file /home/suniel/.ssh/id_ecdsa_sk type -1
> > debug1: identity file /home/suniel/.ssh/id_ecdsa_sk-cert type -1
> > debug1: identity file /home/suniel/.ssh/id_ed25519 type -1
> > debug1: identity file /home/suniel/.ssh/id_ed25519-cert type -1
> > debug1: identity file /home/suniel/.ssh/id_ed25519_sk type -1
> > debug1: identity file /home/suniel/.ssh/id_ed25519_sk-cert type -1
> > debug1: identity file /home/suniel/.ssh/id_xmss type -1
> > debug1: identity file /home/suniel/.ssh/id_xmss-cert type -1
> > debug1: Local version string SSH-2.0-OpenSSH_8.2p1 Ubuntu-4ubuntu0.5
> > debug1: Remote protocol version 2.0, remote software version OpenSSH_8.2
> > debug1: match: OpenSSH_8.2 pat OpenSSH* compat 0x04000000
> > debug2: fd 3 setting O_NONBLOCK
> > debug1: Authenticating to 192.168.1.3:22 as 'root'
> > debug3: hostkeys_foreach: reading file "/home/suniel/.ssh/known_hosts"
> > debug3: record_hostkey: found key type ECDSA in file
> > /home/suniel/.ssh/known_hosts:23
> > debug3: load_hostkeys: loaded 1 keys from 192.168.1.3
> > debug3: order_hostkeyalgs: prefer hostkeyalgs:
> > ecdsa-sha2-nistp256-cert-v01@openssh.com,
> ecdsa-sha2-nistp384-cert-v01@openssh.com,
> ecdsa-sha2-nistp521-cert-v01@openssh.com
> ,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521
> > debug3: send packet: type 20
> > debug1: SSH2_MSG_KEXINIT sent
> > debug3: receive packet: type 20
> > debug1: SSH2_MSG_KEXINIT received
> > debug2: local client KEXINIT proposal
> > debug2: KEX algorithms:
> > curve25519-sha256,curve25519-sha256@libssh.org
> ,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256,ext-info-c
> > debug2: host key algorithms:
> > ecdsa-sha2-nistp256-cert-v01@openssh.com,
> ecdsa-sha2-nistp384-cert-v01@openssh.com,
> ecdsa-sha2-nistp521-cert-v01@openssh.com
> ,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,
> sk-ecdsa-sha2-nistp256-cert-v01@openssh.com,
> ssh-ed25519-cert-v01@openssh.com,sk-ssh-ed25519-cert-v01@openssh.com,
> rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,
> ssh-rsa-cert-v01@openssh.com,sk-ecdsa-sha2-nistp256@openssh.com
> ,ssh-ed25519,sk-ssh-ed25519@openssh.com,rsa-sha2-512,rsa-sha2-256,ssh-rsa
> > debug2: ciphers ctos:
> > chacha20-poly1305@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr,
> aes128-gcm@openssh.com,aes256-gcm@openssh.com
> > debug2: ciphers stoc:
> > chacha20-poly1305@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr,
> aes128-gcm@openssh.com,aes256-gcm@openssh.com
> > debug2: MACs ctos:
> > umac-64-etm@openssh.com,umac-128-etm@openssh.com,
> hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,
> hmac-sha1-etm@openssh.com,umac-64@openssh.com,umac-128@openssh.com
> ,hmac-sha2-256,hmac-sha2-512,hmac-sha1
> > debug2: MACs stoc:
> > umac-64-etm@openssh.com,umac-128-etm@openssh.com,
> hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,
> hmac-sha1-etm@openssh.com,umac-64@openssh.com,umac-128@openssh.com
> ,hmac-sha2-256,hmac-sha2-512,hmac-sha1
> > debug2: compression ctos: none,zlib@openssh.com,zlib
> > debug2: compression stoc: none,zlib@openssh.com,zlib
> > debug2: languages ctos:
> > debug2: languages stoc:
> > debug2: first_kex_follows 0
> > debug2: reserved 0
> > debug2: peer server KEXINIT proposal
> > debug2: KEX algorithms:
> > curve25519-sha256,curve25519-sha256@libssh.org
> ,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-sha256
> > debug2: host key algorithms:
> > rsa-sha2-512,rsa-sha2-256,ssh-rsa,ecdsa-sha2-nistp256,ssh-ed25519
> > debug2: ciphers ctos:
> > chacha20-poly1305@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr,
> aes128-gcm@openssh.com,aes256-gcm@openssh.com
> > debug2: ciphers stoc:
> > chacha20-poly1305@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr,
> aes128-gcm@openssh.com,aes256-gcm@openssh.com
> > debug2: MACs ctos:
> > umac-64-etm@openssh.com,umac-128-etm@openssh.com,
> hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,
> hmac-sha1-etm@openssh.com,umac-64@openssh.com,umac-128@openssh.com
> ,hmac-sha2-256,hmac-sha2-512,hmac-sha1
> > debug2: MACs stoc:
> > umac-64-etm@openssh.com,umac-128-etm@openssh.com,
> hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,
> hmac-sha1-etm@openssh.com,umac-64@openssh.com,umac-128@openssh.com
> ,hmac-sha2-256,hmac-sha2-512,hmac-sha1
> > debug2: compression ctos: none
> > debug2: compression stoc: none
> > debug2: languages ctos:
> > debug2: languages stoc:
> > debug2: first_kex_follows 0
> > debug2: reserved 0
> > debug1: kex: algorithm: curve25519-sha256
> > debug1: kex: host key algorithm: ecdsa-sha2-nistp256
> > debug1: kex: server->client cipher: chacha20-poly1305@openssh.com MAC:
> > <implicit> compression: none
> > debug1: kex: client->server cipher: chacha20-poly1305@openssh.com MAC:
> > <implicit> compression: none
> > debug3: send packet: type 30
> > debug1: expecting SSH2_MSG_KEX_ECDH_REPLY
> > debug3: receive packet: type 31
> > debug1: Server host key: ecdsa-sha2-nistp256
> > SHA256:1Ivo0c/GWF22iwwEAc0D+E79qSH/0eTxDH0pldsfuk4
> > debug3: hostkeys_foreach: reading file "/home/suniel/.ssh/known_hosts"
> > debug3: record_hostkey: found key type ECDSA in file
> > /home/suniel/.ssh/known_hosts:23
> > debug3: load_hostkeys: loaded 1 keys from 192.168.1.3
> > debug1: Host '192.168.1.3' is known and matches the ECDSA host key.
> > debug1: Found key in /home/suniel/.ssh/known_hosts:23
> > debug3: send packet: type 21
> > debug2: set_newkeys: mode 1
> > debug1: rekey out after 134217728 blocks
> > debug1: SSH2_MSG_NEWKEYS sent
> > debug1: expecting SSH2_MSG_NEWKEYS
> > debug3: receive packet: type 21
> > debug1: SSH2_MSG_NEWKEYS received
> > debug2: set_newkeys: mode 0
> > debug1: rekey in after 134217728 blocks
> > debug1: Will attempt key: /home/suniel/.ssh/id_rsa RSA
> > SHA256:p5HL5mkh62PMNf21jyap6L5b1Epud52b6EaNvAFOFlc agent
> > debug1: Will attempt key: /home/suniel/.ssh/id_dsa
> > debug1: Will attempt key: /home/suniel/.ssh/id_ecdsa
> > debug1: Will attempt key: /home/suniel/.ssh/id_ecdsa_sk
> > debug1: Will attempt key: /home/suniel/.ssh/id_ed25519
> > debug1: Will attempt key: /home/suniel/.ssh/id_ed25519_sk
> > debug1: Will attempt key: /home/suniel/.ssh/id_xmss
> > debug2: pubkey_prepare: done
> > debug3: send packet: type 5
> > debug3: receive packet: type 7
> > debug1: SSH2_MSG_EXT_INFO received
> > debug1: kex_input_ext_info:
> > server-sig-algs=<ssh-ed25519,sk-ssh-ed25519@openssh.com
> ,ssh-rsa,rsa-sha2-256,rsa-sha2-512,ssh-dss,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,
> sk-ecdsa-sha2-nistp256@openssh.com>
> > debug3: receive packet: type 6
> > debug2: service_accept: ssh-userauth
> > debug1: SSH2_MSG_SERVICE_ACCEPT received
> > debug3: send packet: type 50
> > Connection closed by 192.168.1.3 port 22
> >
> > Michael
>
>
>
> --
> Michael Nazzareno Trimarchi
> Co-Founder & Chief Executive Officer
> M. +39 347 913 2170
> michael@amarulasolutions.com
> __________________________________
>
> Amarula Solutions BV
> Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
> T. +31 (0)85 111 9172
> info@amarulasolutions.com
> www.amarulasolutions.com
>
>
> --
> Michael Nazzareno Trimarchi
> Co-Founder & Chief Executive Officer
> M. +39 347 913 2170
> michael@amarulasolutions.com
> __________________________________
>
> Amarula Solutions BV
> Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
> T. +31 (0)85 111 9172
> info@amarulasolutions.com
> www.amarulasolutions.com
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58758):
> https://lists.yoctoproject.org/g/yocto/message/58758
> Mute This Topic: https://lists.yoctoproject.org/mt/95538639/5117409
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> fede@evolware.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000004920fd05ef53640f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi Michael,</div><div>Sorry for the ma=
ybe obvious remark (and cannot find the original post if maybe you gave mor=
e details) but: did you enable in openssh daemon configuration to allow for=
 root login? <br></div><div><br></div><div>By default that is not permitted=
, in /etc/ssh/sshd_config you have:</div><div><br></div><div>#PermitRootLog=
in prohibit-password</div><div><br></div><div>(it is usually commented, but=
 shows the default)</div><div>Which you should in case replace with:</div><=
div><br></div><div>PermitRootLogin yes</div><div><br></div><div>This can be=
 also managed on yocto level with the feature &quot;debug-tweaks&quot; or &=
quot;allow-root-login&quot;.<br></div><div><br></div><div>Cheers,</div><div=
>Federico<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">Il giorno gio 8 dic 2022 alle ore 15:21 M=
ichael Nazzareno Trimarchi &lt;<a href=3D"mailto:michael@amarulasolutions.c=
om">michael@amarulasolutions.com</a>&gt; ha scritto:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Hi<br>
<br>
On Mon, Nov 14, 2022 at 5:47 PM Michael Nazzareno Trimarchi<br>
&lt;<a href=3D"mailto:michael@amarulasolutions.com" target=3D"_blank">micha=
el@amarulasolutions.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all<br>
&gt;<br>
&gt; testing the openssh-server and I set root password but I&#39;m enable =
to login<br>
&gt;<br>
&gt; server side<br>
&gt; /usr/sbin/sshd -d -D<br>
&gt;<br>
<br>
I basically solve it with dropbear instead of openssh. Has anybody<br>
found the same problem on dunfell?<br>
<br>
Michael<br>
<br>
&gt; debug1: sshd version OpenSSH_8.2, OpenSSL 1.1.1q 5 Jul 2022<br>
&gt; debug1: private host key #0: ssh-rsa<br>
&gt; SHA256:1endrZLJnyyoE2x+MfLB3JIpEqgzCrORriOhvSSN2HM<br>
&gt; debug1: private host key #1: ecdsa-sha2-nistp256<br>
&gt; SHA256:1Ivo0c/GWF22iwwEAc0D+E79qSH/0eTxDH0pldsfuk4<br>
&gt; debug1: private host key #2: ssh-ed25519<br>
&gt; SHA256:CEHX4ATsgGL4De/rJlyNmwqqCk0Ewf1r4jU4spHTP88<br>
&gt; debug1: rexec_argv[0]=3D&#39;/usr/sbin/sshd&#39;<br>
&gt; debug1: rexec_argv[1]=3D&#39;-d&#39;<br>
&gt; debug1: rexec_argv[2]=3D&#39;-D&#39;<br>
&gt; debug1: Set /proc/self/oom_score_adj from 0 to -1000<br>
&gt; debug1: Bind to port 22 on 0.0.0.0.<br>
&gt; Server listening on 0.0.0.0 port 22.<br>
&gt; debug1: Bind to port 22 on ::.<br>
&gt; Server listening on :: port 22.<br>
&gt; debug1: Server will not fork when running in debugging mode.<br>
&gt; debug1: rexec start in 5 out 5 newsock 5 pipe -1 sock 8<br>
&gt; debug1: sshd version OpenSSH_8.2, OpenSSL 1.1.1q 5 Jul 2022<br>
&gt; debug1: private host key #0: ssh-rsa<br>
&gt; SHA256:1endrZLJnyyoE2x+MfLB3JIpEqgzCrORriOhvSSN2HM<br>
&gt; debug1: private host key #1: ecdsa-sha2-nistp256<br>
&gt; SHA256:1Ivo0c/GWF22iwwEAc0D+E79qSH/0eTxDH0pldsfuk4<br>
&gt; debug1: private host key #2: ssh-ed25519<br>
&gt; SHA256:CEHX4ATsgGL4De/rJlyNmwqqCk0Ewf1r4jU4spHTP88<br>
&gt; debug1: inetd sockets after dupping: 3, 3<br>
&gt; Connection from 192.168.1.8 port 59662 on 192.168.1.3 port 22 rdomain =
&quot;&quot;<br>
&gt; debug1: Local version string SSH-2.0-OpenSSH_8.2<br>
&gt; debug1: Remote protocol version 2.0, remote software version<br>
&gt; OpenSSH_8.2p1 Ubuntu-4ubuntu0.5<br>
&gt; debug1: match: OpenSSH_8.2p1 Ubuntu-4ubuntu0.5 pat OpenSSH* compat 0x0=
4000000<br>
&gt; debug1: permanently_set_uid: 997/997 [preauth]<br>
&gt; debug1: list_hostkey_types:<br>
&gt; rsa-sha2-512,rsa-sha2-256,ssh-rsa,ecdsa-sha2-nistp256,ssh-ed25519<br>
&gt; [preauth]<br>
&gt; debug1: SSH2_MSG_KEXINIT sent [preauth]<br>
&gt; debug1: SSH2_MSG_KEXINIT received [preauth]<br>
&gt; debug1: kex: algorithm: curve25519-sha256 [preauth]<br>
&gt; debug1: kex: host key algorithm: ecdsa-sha2-nistp256 [preauth]<br>
&gt; debug1: kex: client-&gt;server cipher: <a href=3D"mailto:chacha20-poly=
1305@openssh.com" target=3D"_blank">chacha20-poly1305@openssh.com</a> MAC:<=
br>
&gt; &lt;implicit&gt; compression: none [preauth]<br>
&gt; debug1: kex: server-&gt;client cipher: <a href=3D"mailto:chacha20-poly=
1305@openssh.com" target=3D"_blank">chacha20-poly1305@openssh.com</a> MAC:<=
br>
&gt; &lt;implicit&gt; compression: none [preauth]<br>
&gt; debug1: expecting SSH2_MSG_KEX_ECDH_INIT [preauth]<br>
&gt; debug1: rekey out after 134217728 blocks [preauth]<br>
&gt; debug1: SSH2_MSG_NEWKEYS sent [preauth]<br>
&gt; debug1: Sending SSH2_MSG_EXT_INFO [preauth]<br>
&gt; debug1: expecting SSH2_MSG_NEWKEYS [preauth]<br>
&gt; debug1: SSH2_MSG_NEWKEYS received [preauth]<br>
&gt; debug1: rekey in after 134217728 blocks [preauth]<br>
&gt; debug1: KEX done [preauth]<br>
&gt; debug1: userauth-request for user root service ssh-connection method<b=
r>
&gt; none [preauth]<br>
&gt; debug1: attempt 0 failures 0 [preauth]<br>
&gt; debug1: monitor_read_log: child log fd closed<br>
&gt; debug1: do_cleanup<br>
&gt; debug1: Killing privsep child 873<br>
&gt;<br>
&gt; Client side<br>
&gt; ssh -vvv -o PreferredAuthentications=3Dpassword <a href=3D"mailto:root=
@192.168.1.3" target=3D"_blank">root@192.168.1.3</a><br>
&gt;<br>
&gt; OpenSSH_8.2p1 Ubuntu-4ubuntu0.5, OpenSSL 1.1.1f 31 Mar 2020<br>
&gt; debug1: Reading configuration data /home/suniel/.ssh/config<br>
&gt; debug1: Reading configuration data /etc/ssh/ssh_config<br>
&gt; debug1: /etc/ssh/ssh_config line 19: include<br>
&gt; /etc/ssh/ssh_config.d/*.conf matched no files<br>
&gt; debug1: /etc/ssh/ssh_config line 21: Applying options for *<br>
&gt; debug2: resolve_canonicalize: hostname 192.168.1.3 is address<br>
&gt; debug2: ssh_connect_direct<br>
&gt; debug1: Connecting to 192.168.1.3 [192.168.1.3] port 22.<br>
&gt; debug1: Connection established.<br>
&gt; debug1: identity file /home/suniel/.ssh/id_rsa type 0<br>
&gt; debug1: identity file /home/suniel/.ssh/id_rsa-cert type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_dsa type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_dsa-cert type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_ecdsa type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_ecdsa-cert type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_ecdsa_sk type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_ecdsa_sk-cert type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_ed25519 type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_ed25519-cert type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_ed25519_sk type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_ed25519_sk-cert type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_xmss type -1<br>
&gt; debug1: identity file /home/suniel/.ssh/id_xmss-cert type -1<br>
&gt; debug1: Local version string SSH-2.0-OpenSSH_8.2p1 Ubuntu-4ubuntu0.5<b=
r>
&gt; debug1: Remote protocol version 2.0, remote software version OpenSSH_8=
.2<br>
&gt; debug1: match: OpenSSH_8.2 pat OpenSSH* compat 0x04000000<br>
&gt; debug2: fd 3 setting O_NONBLOCK<br>
&gt; debug1: Authenticating to <a href=3D"http://192.168.1.3:22" rel=3D"nor=
eferrer" target=3D"_blank">192.168.1.3:22</a> as &#39;root&#39;<br>
&gt; debug3: hostkeys_foreach: reading file &quot;/home/suniel/.ssh/known_h=
osts&quot;<br>
&gt; debug3: record_hostkey: found key type ECDSA in file<br>
&gt; /home/suniel/.ssh/known_hosts:23<br>
&gt; debug3: load_hostkeys: loaded 1 keys from 192.168.1.3<br>
&gt; debug3: order_hostkeyalgs: prefer hostkeyalgs:<br>
&gt; <a href=3D"mailto:ecdsa-sha2-nistp256-cert-v01@openssh.com" target=3D"=
_blank">ecdsa-sha2-nistp256-cert-v01@openssh.com</a>,<a href=3D"mailto:ecds=
a-sha2-nistp384-cert-v01@openssh.com" target=3D"_blank">ecdsa-sha2-nistp384=
-cert-v01@openssh.com</a>,<a href=3D"mailto:ecdsa-sha2-nistp521-cert-v01@op=
enssh.com" target=3D"_blank">ecdsa-sha2-nistp521-cert-v01@openssh.com</a>,e=
cdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521<br>
&gt; debug3: send packet: type 20<br>
&gt; debug1: SSH2_MSG_KEXINIT sent<br>
&gt; debug3: receive packet: type 20<br>
&gt; debug1: SSH2_MSG_KEXINIT received<br>
&gt; debug2: local client KEXINIT proposal<br>
&gt; debug2: KEX algorithms:<br>
&gt; curve25519-sha256,<a href=3D"mailto:curve25519-sha256@libssh.org" targ=
et=3D"_blank">curve25519-sha256@libssh.org</a>,ecdh-sha2-nistp256,ecdh-sha2=
-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-he=
llman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-s=
ha256,ext-info-c<br>
&gt; debug2: host key algorithms:<br>
&gt; <a href=3D"mailto:ecdsa-sha2-nistp256-cert-v01@openssh.com" target=3D"=
_blank">ecdsa-sha2-nistp256-cert-v01@openssh.com</a>,<a href=3D"mailto:ecds=
a-sha2-nistp384-cert-v01@openssh.com" target=3D"_blank">ecdsa-sha2-nistp384=
-cert-v01@openssh.com</a>,<a href=3D"mailto:ecdsa-sha2-nistp521-cert-v01@op=
enssh.com" target=3D"_blank">ecdsa-sha2-nistp521-cert-v01@openssh.com</a>,e=
cdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521,<a href=3D"mailt=
o:sk-ecdsa-sha2-nistp256-cert-v01@openssh.com" target=3D"_blank">sk-ecdsa-s=
ha2-nistp256-cert-v01@openssh.com</a>,<a href=3D"mailto:ssh-ed25519-cert-v0=
1@openssh.com" target=3D"_blank">ssh-ed25519-cert-v01@openssh.com</a>,<a hr=
ef=3D"mailto:sk-ssh-ed25519-cert-v01@openssh.com" target=3D"_blank">sk-ssh-=
ed25519-cert-v01@openssh.com</a>,<a href=3D"mailto:rsa-sha2-512-cert-v01@op=
enssh.com" target=3D"_blank">rsa-sha2-512-cert-v01@openssh.com</a>,<a href=
=3D"mailto:rsa-sha2-256-cert-v01@openssh.com" target=3D"_blank">rsa-sha2-25=
6-cert-v01@openssh.com</a>,<a href=3D"mailto:ssh-rsa-cert-v01@openssh.com" =
target=3D"_blank">ssh-rsa-cert-v01@openssh.com</a>,<a href=3D"mailto:sk-ecd=
sa-sha2-nistp256@openssh.com" target=3D"_blank">sk-ecdsa-sha2-nistp256@open=
ssh.com</a>,ssh-ed25519,<a href=3D"mailto:sk-ssh-ed25519@openssh.com" targe=
t=3D"_blank">sk-ssh-ed25519@openssh.com</a>,rsa-sha2-512,rsa-sha2-256,ssh-r=
sa<br>
&gt; debug2: ciphers ctos:<br>
&gt; <a href=3D"mailto:chacha20-poly1305@openssh.com" target=3D"_blank">cha=
cha20-poly1305@openssh.com</a>,aes128-ctr,aes192-ctr,aes256-ctr,<a href=3D"=
mailto:aes128-gcm@openssh.com" target=3D"_blank">aes128-gcm@openssh.com</a>=
,<a href=3D"mailto:aes256-gcm@openssh.com" target=3D"_blank">aes256-gcm@ope=
nssh.com</a><br>
&gt; debug2: ciphers stoc:<br>
&gt; <a href=3D"mailto:chacha20-poly1305@openssh.com" target=3D"_blank">cha=
cha20-poly1305@openssh.com</a>,aes128-ctr,aes192-ctr,aes256-ctr,<a href=3D"=
mailto:aes128-gcm@openssh.com" target=3D"_blank">aes128-gcm@openssh.com</a>=
,<a href=3D"mailto:aes256-gcm@openssh.com" target=3D"_blank">aes256-gcm@ope=
nssh.com</a><br>
&gt; debug2: MACs ctos:<br>
&gt; <a href=3D"mailto:umac-64-etm@openssh.com" target=3D"_blank">umac-64-e=
tm@openssh.com</a>,<a href=3D"mailto:umac-128-etm@openssh.com" target=3D"_b=
lank">umac-128-etm@openssh.com</a>,<a href=3D"mailto:hmac-sha2-256-etm@open=
ssh.com" target=3D"_blank">hmac-sha2-256-etm@openssh.com</a>,<a href=3D"mai=
lto:hmac-sha2-512-etm@openssh.com" target=3D"_blank">hmac-sha2-512-etm@open=
ssh.com</a>,<a href=3D"mailto:hmac-sha1-etm@openssh.com" target=3D"_blank">=
hmac-sha1-etm@openssh.com</a>,<a href=3D"mailto:umac-64@openssh.com" target=
=3D"_blank">umac-64@openssh.com</a>,<a href=3D"mailto:umac-128@openssh.com"=
 target=3D"_blank">umac-128@openssh.com</a>,hmac-sha2-256,hmac-sha2-512,hma=
c-sha1<br>
&gt; debug2: MACs stoc:<br>
&gt; <a href=3D"mailto:umac-64-etm@openssh.com" target=3D"_blank">umac-64-e=
tm@openssh.com</a>,<a href=3D"mailto:umac-128-etm@openssh.com" target=3D"_b=
lank">umac-128-etm@openssh.com</a>,<a href=3D"mailto:hmac-sha2-256-etm@open=
ssh.com" target=3D"_blank">hmac-sha2-256-etm@openssh.com</a>,<a href=3D"mai=
lto:hmac-sha2-512-etm@openssh.com" target=3D"_blank">hmac-sha2-512-etm@open=
ssh.com</a>,<a href=3D"mailto:hmac-sha1-etm@openssh.com" target=3D"_blank">=
hmac-sha1-etm@openssh.com</a>,<a href=3D"mailto:umac-64@openssh.com" target=
=3D"_blank">umac-64@openssh.com</a>,<a href=3D"mailto:umac-128@openssh.com"=
 target=3D"_blank">umac-128@openssh.com</a>,hmac-sha2-256,hmac-sha2-512,hma=
c-sha1<br>
&gt; debug2: compression ctos: none,<a href=3D"mailto:zlib@openssh.com" tar=
get=3D"_blank">zlib@openssh.com</a>,zlib<br>
&gt; debug2: compression stoc: none,<a href=3D"mailto:zlib@openssh.com" tar=
get=3D"_blank">zlib@openssh.com</a>,zlib<br>
&gt; debug2: languages ctos:<br>
&gt; debug2: languages stoc:<br>
&gt; debug2: first_kex_follows 0<br>
&gt; debug2: reserved 0<br>
&gt; debug2: peer server KEXINIT proposal<br>
&gt; debug2: KEX algorithms:<br>
&gt; curve25519-sha256,<a href=3D"mailto:curve25519-sha256@libssh.org" targ=
et=3D"_blank">curve25519-sha256@libssh.org</a>,ecdh-sha2-nistp256,ecdh-sha2=
-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-he=
llman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14-s=
ha256<br>
&gt; debug2: host key algorithms:<br>
&gt; rsa-sha2-512,rsa-sha2-256,ssh-rsa,ecdsa-sha2-nistp256,ssh-ed25519<br>
&gt; debug2: ciphers ctos:<br>
&gt; <a href=3D"mailto:chacha20-poly1305@openssh.com" target=3D"_blank">cha=
cha20-poly1305@openssh.com</a>,aes128-ctr,aes192-ctr,aes256-ctr,<a href=3D"=
mailto:aes128-gcm@openssh.com" target=3D"_blank">aes128-gcm@openssh.com</a>=
,<a href=3D"mailto:aes256-gcm@openssh.com" target=3D"_blank">aes256-gcm@ope=
nssh.com</a><br>
&gt; debug2: ciphers stoc:<br>
&gt; <a href=3D"mailto:chacha20-poly1305@openssh.com" target=3D"_blank">cha=
cha20-poly1305@openssh.com</a>,aes128-ctr,aes192-ctr,aes256-ctr,<a href=3D"=
mailto:aes128-gcm@openssh.com" target=3D"_blank">aes128-gcm@openssh.com</a>=
,<a href=3D"mailto:aes256-gcm@openssh.com" target=3D"_blank">aes256-gcm@ope=
nssh.com</a><br>
&gt; debug2: MACs ctos:<br>
&gt; <a href=3D"mailto:umac-64-etm@openssh.com" target=3D"_blank">umac-64-e=
tm@openssh.com</a>,<a href=3D"mailto:umac-128-etm@openssh.com" target=3D"_b=
lank">umac-128-etm@openssh.com</a>,<a href=3D"mailto:hmac-sha2-256-etm@open=
ssh.com" target=3D"_blank">hmac-sha2-256-etm@openssh.com</a>,<a href=3D"mai=
lto:hmac-sha2-512-etm@openssh.com" target=3D"_blank">hmac-sha2-512-etm@open=
ssh.com</a>,<a href=3D"mailto:hmac-sha1-etm@openssh.com" target=3D"_blank">=
hmac-sha1-etm@openssh.com</a>,<a href=3D"mailto:umac-64@openssh.com" target=
=3D"_blank">umac-64@openssh.com</a>,<a href=3D"mailto:umac-128@openssh.com"=
 target=3D"_blank">umac-128@openssh.com</a>,hmac-sha2-256,hmac-sha2-512,hma=
c-sha1<br>
&gt; debug2: MACs stoc:<br>
&gt; <a href=3D"mailto:umac-64-etm@openssh.com" target=3D"_blank">umac-64-e=
tm@openssh.com</a>,<a href=3D"mailto:umac-128-etm@openssh.com" target=3D"_b=
lank">umac-128-etm@openssh.com</a>,<a href=3D"mailto:hmac-sha2-256-etm@open=
ssh.com" target=3D"_blank">hmac-sha2-256-etm@openssh.com</a>,<a href=3D"mai=
lto:hmac-sha2-512-etm@openssh.com" target=3D"_blank">hmac-sha2-512-etm@open=
ssh.com</a>,<a href=3D"mailto:hmac-sha1-etm@openssh.com" target=3D"_blank">=
hmac-sha1-etm@openssh.com</a>,<a href=3D"mailto:umac-64@openssh.com" target=
=3D"_blank">umac-64@openssh.com</a>,<a href=3D"mailto:umac-128@openssh.com"=
 target=3D"_blank">umac-128@openssh.com</a>,hmac-sha2-256,hmac-sha2-512,hma=
c-sha1<br>
&gt; debug2: compression ctos: none<br>
&gt; debug2: compression stoc: none<br>
&gt; debug2: languages ctos:<br>
&gt; debug2: languages stoc:<br>
&gt; debug2: first_kex_follows 0<br>
&gt; debug2: reserved 0<br>
&gt; debug1: kex: algorithm: curve25519-sha256<br>
&gt; debug1: kex: host key algorithm: ecdsa-sha2-nistp256<br>
&gt; debug1: kex: server-&gt;client cipher: <a href=3D"mailto:chacha20-poly=
1305@openssh.com" target=3D"_blank">chacha20-poly1305@openssh.com</a> MAC:<=
br>
&gt; &lt;implicit&gt; compression: none<br>
&gt; debug1: kex: client-&gt;server cipher: <a href=3D"mailto:chacha20-poly=
1305@openssh.com" target=3D"_blank">chacha20-poly1305@openssh.com</a> MAC:<=
br>
&gt; &lt;implicit&gt; compression: none<br>
&gt; debug3: send packet: type 30<br>
&gt; debug1: expecting SSH2_MSG_KEX_ECDH_REPLY<br>
&gt; debug3: receive packet: type 31<br>
&gt; debug1: Server host key: ecdsa-sha2-nistp256<br>
&gt; SHA256:1Ivo0c/GWF22iwwEAc0D+E79qSH/0eTxDH0pldsfuk4<br>
&gt; debug3: hostkeys_foreach: reading file &quot;/home/suniel/.ssh/known_h=
osts&quot;<br>
&gt; debug3: record_hostkey: found key type ECDSA in file<br>
&gt; /home/suniel/.ssh/known_hosts:23<br>
&gt; debug3: load_hostkeys: loaded 1 keys from 192.168.1.3<br>
&gt; debug1: Host &#39;192.168.1.3&#39; is known and matches the ECDSA host=
 key.<br>
&gt; debug1: Found key in /home/suniel/.ssh/known_hosts:23<br>
&gt; debug3: send packet: type 21<br>
&gt; debug2: set_newkeys: mode 1<br>
&gt; debug1: rekey out after 134217728 blocks<br>
&gt; debug1: SSH2_MSG_NEWKEYS sent<br>
&gt; debug1: expecting SSH2_MSG_NEWKEYS<br>
&gt; debug3: receive packet: type 21<br>
&gt; debug1: SSH2_MSG_NEWKEYS received<br>
&gt; debug2: set_newkeys: mode 0<br>
&gt; debug1: rekey in after 134217728 blocks<br>
&gt; debug1: Will attempt key: /home/suniel/.ssh/id_rsa RSA<br>
&gt; SHA256:p5HL5mkh62PMNf21jyap6L5b1Epud52b6EaNvAFOFlc agent<br>
&gt; debug1: Will attempt key: /home/suniel/.ssh/id_dsa<br>
&gt; debug1: Will attempt key: /home/suniel/.ssh/id_ecdsa<br>
&gt; debug1: Will attempt key: /home/suniel/.ssh/id_ecdsa_sk<br>
&gt; debug1: Will attempt key: /home/suniel/.ssh/id_ed25519<br>
&gt; debug1: Will attempt key: /home/suniel/.ssh/id_ed25519_sk<br>
&gt; debug1: Will attempt key: /home/suniel/.ssh/id_xmss<br>
&gt; debug2: pubkey_prepare: done<br>
&gt; debug3: send packet: type 5<br>
&gt; debug3: receive packet: type 7<br>
&gt; debug1: SSH2_MSG_EXT_INFO received<br>
&gt; debug1: kex_input_ext_info:<br>
&gt; server-sig-algs=3D&lt;ssh-ed25519,<a href=3D"mailto:sk-ssh-ed25519@ope=
nssh.com" target=3D"_blank">sk-ssh-ed25519@openssh.com</a>,ssh-rsa,rsa-sha2=
-256,rsa-sha2-512,ssh-dss,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha=
2-nistp521,<a href=3D"mailto:sk-ecdsa-sha2-nistp256@openssh.com" target=3D"=
_blank">sk-ecdsa-sha2-nistp256@openssh.com</a>&gt;<br>
&gt; debug3: receive packet: type 6<br>
&gt; debug2: service_accept: ssh-userauth<br>
&gt; debug1: SSH2_MSG_SERVICE_ACCEPT received<br>
&gt; debug3: send packet: type 50<br>
&gt; Connection closed by 192.168.1.3 port 22<br>
&gt;<br>
&gt; Michael<br>
<br>
<br>
<br>
--<br>
Michael Nazzareno Trimarchi<br>
Co-Founder &amp; Chief Executive Officer<br>
M. +39 347 913 2170<br>
<a href=3D"mailto:michael@amarulasolutions.com" target=3D"_blank">michael@a=
marulasolutions.com</a><br>
__________________________________<br>
<br>
Amarula Solutions BV<br>
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL<br>
T. +31 (0)85 111 9172<br>
<a href=3D"mailto:info@amarulasolutions.com" target=3D"_blank">info@amarula=
solutions.com</a><br>
<a href=3D"http://www.amarulasolutions.com" rel=3D"noreferrer" target=3D"_b=
lank">www.amarulasolutions.com</a><br>
<br>
<br>
-- <br>
Michael Nazzareno Trimarchi<br>
Co-Founder &amp; Chief Executive Officer<br>
M. +39 347 913 2170<br>
<a href=3D"mailto:michael@amarulasolutions.com" target=3D"_blank">michael@a=
marulasolutions.com</a><br>
__________________________________<br>
<br>
Amarula Solutions BV<br>
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL<br>
T. +31 (0)85 111 9172<br>
<a href=3D"mailto:info@amarulasolutions.com" target=3D"_blank">info@amarula=
solutions.com</a><br>
<a href=3D"http://www.amarulasolutions.com" rel=3D"noreferrer" target=3D"_b=
lank">www.amarulasolutions.com</a><br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58758): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58758" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58758</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95538639/5117=
409" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95538639/5117409</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:fede@evolware.org" target=3D"_blank">fede@evolwa=
re.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000004920fd05ef53640f--

