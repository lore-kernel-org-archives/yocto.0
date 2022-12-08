Return-Path: <michael@amarulasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F246DC63703
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 14:21:56 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web10.15027.1670509311965430124
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 06:21:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=AtZyD7jA;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.218.49, mailfrom: michael@amarulasolutions.com)
Received: by mail-ej1-f49.google.com with SMTP id m18so4405269eji.5
        for <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 06:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yq+fZZspWEzTVkVg4YtTek8fDQQ7FujC7ivwy0rfYck=;
        b=AtZyD7jAKHjUxpAvdhjVwMFvR1kMrZ3TPNIKaa6IIjix3+IDdUoSLPYX9VXrxf73dr
         uAJLU+gSAmYOK7BXz4l6KaLfOLugdqDGxkdLnIiHHW1n8cm/FGPZpf45TX3fPwQjTFmW
         GDmGEVK7SOuyitcO2eHgfoQ4G0BkCMpaZw1mw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yq+fZZspWEzTVkVg4YtTek8fDQQ7FujC7ivwy0rfYck=;
        b=GTXfb46HaC7orlnEash7PBcg8JejZLNGNtXfrRqgXtK0t/FvMqMzgO4LUxbd4XBNcX
         1Yu9FeYBmaqp2bFw0jVJMp5X8DW+Hgd70rHiCBZsK9+1TVuvBn9dPpyGpUJGsV0l2T7H
         u20ocWRfydHD2G2/G27Sz8JladHe7AsdRpM0uAByJZvzx9gR0HAv0nk8fB+khxaJJaYM
         T7S6Jcpuva0iOuHhx/YDF1ZNCf64ElXhb5L8awzBoT5XIuYpfeixIx8u4AdMuEVovwCT
         0t1qb7p/lUUfWO8RWIlomG4nR2VUqQ9dnx7uspXl7yNfiS5BVHT0alo32DJw3cTDcJES
         y7gw==
X-Gm-Message-State: ANoB5pmhOh1T9LkzCVK8e5HA58fMDkukhbWTHWFBGgKIEgNCh0EBiqb4
	8UYZbrrmjC++5RFVL2xvaZTT5gbgNiEmEbWIfpHBtfopSPMwAKsF
X-Google-Smtp-Source: AA0mqf7fKwgub7fWVWrB7gdj1IlAwEHatl2V0emfQYD/p2hR7ziyOagACcfSm/s9KcXpUVT/08c0RTDt0Muw2hX7gds=
X-Received: by 2002:a17:907:8c81:b0:7bf:5cc5:67c5 with SMTP id
 td1-20020a1709078c8100b007bf5cc567c5mr41301734ejc.488.1670509309578; Thu, 08
 Dec 2022 06:21:49 -0800 (PST)
MIME-Version: 1.0
References: <CAOf5uwmnnryGOSEDqkgA8g0ocn7aPPbv_bnXjBjOCE3FJpGTOw@mail.gmail.com>
 <CAOf5uwmOQPv0rWF2zwwMdi2Tkvi6syzU9TtmbxPL7Cqo5OEtEg@mail.gmail.com>
In-Reply-To: <CAOf5uwmOQPv0rWF2zwwMdi2Tkvi6syzU9TtmbxPL7Cqo5OEtEg@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Thu, 8 Dec 2022 15:21:38 +0100
Message-ID: <CAOf5uwkcLyXxRZ1gN7xQONkHHOLsikyfnOM3wA1Rg8OqmJMLUQ@mail.gmail.com>
Subject: Fwd: open ssh dunfell unable to login
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 14:21:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58758

Hi

On Mon, Nov 14, 2022 at 5:47 PM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi all
>
> testing the openssh-server and I set root password but I'm enable to logi=
n
>
> server side
> /usr/sbin/sshd -d -D
>

I basically solve it with dropbear instead of openssh. Has anybody
found the same problem on dunfell?

Michael

> debug1: sshd version OpenSSH_8.2, OpenSSL 1.1.1q 5 Jul 2022
> debug1: private host key #0: ssh-rsa
> SHA256:1endrZLJnyyoE2x+MfLB3JIpEqgzCrORriOhvSSN2HM
> debug1: private host key #1: ecdsa-sha2-nistp256
> SHA256:1Ivo0c/GWF22iwwEAc0D+E79qSH/0eTxDH0pldsfuk4
> debug1: private host key #2: ssh-ed25519
> SHA256:CEHX4ATsgGL4De/rJlyNmwqqCk0Ewf1r4jU4spHTP88
> debug1: rexec_argv[0]=3D'/usr/sbin/sshd'
> debug1: rexec_argv[1]=3D'-d'
> debug1: rexec_argv[2]=3D'-D'
> debug1: Set /proc/self/oom_score_adj from 0 to -1000
> debug1: Bind to port 22 on 0.0.0.0.
> Server listening on 0.0.0.0 port 22.
> debug1: Bind to port 22 on ::.
> Server listening on :: port 22.
> debug1: Server will not fork when running in debugging mode.
> debug1: rexec start in 5 out 5 newsock 5 pipe -1 sock 8
> debug1: sshd version OpenSSH_8.2, OpenSSL 1.1.1q 5 Jul 2022
> debug1: private host key #0: ssh-rsa
> SHA256:1endrZLJnyyoE2x+MfLB3JIpEqgzCrORriOhvSSN2HM
> debug1: private host key #1: ecdsa-sha2-nistp256
> SHA256:1Ivo0c/GWF22iwwEAc0D+E79qSH/0eTxDH0pldsfuk4
> debug1: private host key #2: ssh-ed25519
> SHA256:CEHX4ATsgGL4De/rJlyNmwqqCk0Ewf1r4jU4spHTP88
> debug1: inetd sockets after dupping: 3, 3
> Connection from 192.168.1.8 port 59662 on 192.168.1.3 port 22 rdomain ""
> debug1: Local version string SSH-2.0-OpenSSH_8.2
> debug1: Remote protocol version 2.0, remote software version
> OpenSSH_8.2p1 Ubuntu-4ubuntu0.5
> debug1: match: OpenSSH_8.2p1 Ubuntu-4ubuntu0.5 pat OpenSSH* compat 0x0400=
0000
> debug1: permanently_set_uid: 997/997 [preauth]
> debug1: list_hostkey_types:
> rsa-sha2-512,rsa-sha2-256,ssh-rsa,ecdsa-sha2-nistp256,ssh-ed25519
> [preauth]
> debug1: SSH2_MSG_KEXINIT sent [preauth]
> debug1: SSH2_MSG_KEXINIT received [preauth]
> debug1: kex: algorithm: curve25519-sha256 [preauth]
> debug1: kex: host key algorithm: ecdsa-sha2-nistp256 [preauth]
> debug1: kex: client->server cipher: chacha20-poly1305@openssh.com MAC:
> <implicit> compression: none [preauth]
> debug1: kex: server->client cipher: chacha20-poly1305@openssh.com MAC:
> <implicit> compression: none [preauth]
> debug1: expecting SSH2_MSG_KEX_ECDH_INIT [preauth]
> debug1: rekey out after 134217728 blocks [preauth]
> debug1: SSH2_MSG_NEWKEYS sent [preauth]
> debug1: Sending SSH2_MSG_EXT_INFO [preauth]
> debug1: expecting SSH2_MSG_NEWKEYS [preauth]
> debug1: SSH2_MSG_NEWKEYS received [preauth]
> debug1: rekey in after 134217728 blocks [preauth]
> debug1: KEX done [preauth]
> debug1: userauth-request for user root service ssh-connection method
> none [preauth]
> debug1: attempt 0 failures 0 [preauth]
> debug1: monitor_read_log: child log fd closed
> debug1: do_cleanup
> debug1: Killing privsep child 873
>
> Client side
> ssh -vvv -o PreferredAuthentications=3Dpassword root@192.168.1.3
>
> OpenSSH_8.2p1 Ubuntu-4ubuntu0.5, OpenSSL 1.1.1f 31 Mar 2020
> debug1: Reading configuration data /home/suniel/.ssh/config
> debug1: Reading configuration data /etc/ssh/ssh_config
> debug1: /etc/ssh/ssh_config line 19: include
> /etc/ssh/ssh_config.d/*.conf matched no files
> debug1: /etc/ssh/ssh_config line 21: Applying options for *
> debug2: resolve_canonicalize: hostname 192.168.1.3 is address
> debug2: ssh_connect_direct
> debug1: Connecting to 192.168.1.3 [192.168.1.3] port 22.
> debug1: Connection established.
> debug1: identity file /home/suniel/.ssh/id_rsa type 0
> debug1: identity file /home/suniel/.ssh/id_rsa-cert type -1
> debug1: identity file /home/suniel/.ssh/id_dsa type -1
> debug1: identity file /home/suniel/.ssh/id_dsa-cert type -1
> debug1: identity file /home/suniel/.ssh/id_ecdsa type -1
> debug1: identity file /home/suniel/.ssh/id_ecdsa-cert type -1
> debug1: identity file /home/suniel/.ssh/id_ecdsa_sk type -1
> debug1: identity file /home/suniel/.ssh/id_ecdsa_sk-cert type -1
> debug1: identity file /home/suniel/.ssh/id_ed25519 type -1
> debug1: identity file /home/suniel/.ssh/id_ed25519-cert type -1
> debug1: identity file /home/suniel/.ssh/id_ed25519_sk type -1
> debug1: identity file /home/suniel/.ssh/id_ed25519_sk-cert type -1
> debug1: identity file /home/suniel/.ssh/id_xmss type -1
> debug1: identity file /home/suniel/.ssh/id_xmss-cert type -1
> debug1: Local version string SSH-2.0-OpenSSH_8.2p1 Ubuntu-4ubuntu0.5
> debug1: Remote protocol version 2.0, remote software version OpenSSH_8.2
> debug1: match: OpenSSH_8.2 pat OpenSSH* compat 0x04000000
> debug2: fd 3 setting O_NONBLOCK
> debug1: Authenticating to 192.168.1.3:22 as 'root'
> debug3: hostkeys_foreach: reading file "/home/suniel/.ssh/known_hosts"
> debug3: record_hostkey: found key type ECDSA in file
> /home/suniel/.ssh/known_hosts:23
> debug3: load_hostkeys: loaded 1 keys from 192.168.1.3
> debug3: order_hostkeyalgs: prefer hostkeyalgs:
> ecdsa-sha2-nistp256-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@ope=
nssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,ecdsa-sha2-nistp256,ecdsa=
-sha2-nistp384,ecdsa-sha2-nistp521
> debug3: send packet: type 20
> debug1: SSH2_MSG_KEXINIT sent
> debug3: receive packet: type 20
> debug1: SSH2_MSG_KEXINIT received
> debug2: local client KEXINIT proposal
> debug2: KEX algorithms:
> curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sh=
a2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-=
hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14=
-sha256,ext-info-c
> debug2: host key algorithms:
> ecdsa-sha2-nistp256-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@ope=
nssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,ecdsa-sha2-nistp256,ecdsa=
-sha2-nistp384,ecdsa-sha2-nistp521,sk-ecdsa-sha2-nistp256-cert-v01@openssh.=
com,ssh-ed25519-cert-v01@openssh.com,sk-ssh-ed25519-cert-v01@openssh.com,rs=
a-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-rsa-c=
ert-v01@openssh.com,sk-ecdsa-sha2-nistp256@openssh.com,ssh-ed25519,sk-ssh-e=
d25519@openssh.com,rsa-sha2-512,rsa-sha2-256,ssh-rsa
> debug2: ciphers ctos:
> chacha20-poly1305@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm=
@openssh.com,aes256-gcm@openssh.com
> debug2: ciphers stoc:
> chacha20-poly1305@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm=
@openssh.com,aes256-gcm@openssh.com
> debug2: MACs ctos:
> umac-64-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-256-etm@openss=
h.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,umac-64@opens=
sh.com,umac-128@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1
> debug2: MACs stoc:
> umac-64-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-256-etm@openss=
h.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,umac-64@opens=
sh.com,umac-128@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1
> debug2: compression ctos: none,zlib@openssh.com,zlib
> debug2: compression stoc: none,zlib@openssh.com,zlib
> debug2: languages ctos:
> debug2: languages stoc:
> debug2: first_kex_follows 0
> debug2: reserved 0
> debug2: peer server KEXINIT proposal
> debug2: KEX algorithms:
> curve25519-sha256,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sh=
a2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-=
hellman-group16-sha512,diffie-hellman-group18-sha512,diffie-hellman-group14=
-sha256
> debug2: host key algorithms:
> rsa-sha2-512,rsa-sha2-256,ssh-rsa,ecdsa-sha2-nistp256,ssh-ed25519
> debug2: ciphers ctos:
> chacha20-poly1305@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm=
@openssh.com,aes256-gcm@openssh.com
> debug2: ciphers stoc:
> chacha20-poly1305@openssh.com,aes128-ctr,aes192-ctr,aes256-ctr,aes128-gcm=
@openssh.com,aes256-gcm@openssh.com
> debug2: MACs ctos:
> umac-64-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-256-etm@openss=
h.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,umac-64@opens=
sh.com,umac-128@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1
> debug2: MACs stoc:
> umac-64-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-256-etm@openss=
h.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,umac-64@opens=
sh.com,umac-128@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1
> debug2: compression ctos: none
> debug2: compression stoc: none
> debug2: languages ctos:
> debug2: languages stoc:
> debug2: first_kex_follows 0
> debug2: reserved 0
> debug1: kex: algorithm: curve25519-sha256
> debug1: kex: host key algorithm: ecdsa-sha2-nistp256
> debug1: kex: server->client cipher: chacha20-poly1305@openssh.com MAC:
> <implicit> compression: none
> debug1: kex: client->server cipher: chacha20-poly1305@openssh.com MAC:
> <implicit> compression: none
> debug3: send packet: type 30
> debug1: expecting SSH2_MSG_KEX_ECDH_REPLY
> debug3: receive packet: type 31
> debug1: Server host key: ecdsa-sha2-nistp256
> SHA256:1Ivo0c/GWF22iwwEAc0D+E79qSH/0eTxDH0pldsfuk4
> debug3: hostkeys_foreach: reading file "/home/suniel/.ssh/known_hosts"
> debug3: record_hostkey: found key type ECDSA in file
> /home/suniel/.ssh/known_hosts:23
> debug3: load_hostkeys: loaded 1 keys from 192.168.1.3
> debug1: Host '192.168.1.3' is known and matches the ECDSA host key.
> debug1: Found key in /home/suniel/.ssh/known_hosts:23
> debug3: send packet: type 21
> debug2: set_newkeys: mode 1
> debug1: rekey out after 134217728 blocks
> debug1: SSH2_MSG_NEWKEYS sent
> debug1: expecting SSH2_MSG_NEWKEYS
> debug3: receive packet: type 21
> debug1: SSH2_MSG_NEWKEYS received
> debug2: set_newkeys: mode 0
> debug1: rekey in after 134217728 blocks
> debug1: Will attempt key: /home/suniel/.ssh/id_rsa RSA
> SHA256:p5HL5mkh62PMNf21jyap6L5b1Epud52b6EaNvAFOFlc agent
> debug1: Will attempt key: /home/suniel/.ssh/id_dsa
> debug1: Will attempt key: /home/suniel/.ssh/id_ecdsa
> debug1: Will attempt key: /home/suniel/.ssh/id_ecdsa_sk
> debug1: Will attempt key: /home/suniel/.ssh/id_ed25519
> debug1: Will attempt key: /home/suniel/.ssh/id_ed25519_sk
> debug1: Will attempt key: /home/suniel/.ssh/id_xmss
> debug2: pubkey_prepare: done
> debug3: send packet: type 5
> debug3: receive packet: type 7
> debug1: SSH2_MSG_EXT_INFO received
> debug1: kex_input_ext_info:
> server-sig-algs=3D<ssh-ed25519,sk-ssh-ed25519@openssh.com,ssh-rsa,rsa-sha=
2-256,rsa-sha2-512,ssh-dss,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sh=
a2-nistp521,sk-ecdsa-sha2-nistp256@openssh.com>
> debug3: receive packet: type 6
> debug2: service_accept: ssh-userauth
> debug1: SSH2_MSG_SERVICE_ACCEPT received
> debug3: send packet: type 50
> Connection closed by 192.168.1.3 port 22
>
> Michael



--
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com


--=20
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

