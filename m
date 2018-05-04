Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61C2CE009E2; Fri,  4 May 2018 07:29:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, NORMAL_HTTP_TO_IP,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC5FAE0086B
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 07:29:11 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id z6-v6so3569234iti.4
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 07:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=ShphEZPUe4dGXN/M1vwWFlyxDLe7b7EYCIIq91zrebY=;
	b=L+s9PrPux3+L7oxaCvti507MEKevXLa54TGzumulAsFRogcDYo5MGtcJq+9JaTn7Ez
	jnxYRVa1CSAc+ajXmm5Ph8DSX5Pu6KBggOaG1YLGYMD4s/SlLLHkJlLRasJALaBuch+6
	+NgqPw2pUcLumQgNMeuw95McpcazVaE5gon3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ShphEZPUe4dGXN/M1vwWFlyxDLe7b7EYCIIq91zrebY=;
	b=GGM5vRBWmzva0gNHUsqsx+fmWy+K9tZFa4eDfQz0666d3FYdXrsk4gEFGVS91Gprn/
	tLZRwMPRqVhOcqAtURp+XkKsXmXRwTP4ZKcpHhWGoJy+xmZWOZgcEh3r1zOH4JpjdT+Z
	XS4TrMDVniiEBd40oA/L0g3qEmbPh086hNsykaO5U+hOgbwxLVakVmBwGmb7Rqxa2kX2
	CloAR8VIS4kUIDoA1ejLWy/pKr7pWNbXRKspaUziN7XvO/3l80oMAS20sp0lbfIpEvjr
	aqFUcSYb1krb2sW7VfcXYMlDC2LJZv7dp0EwvfpN06MUEkC1o3A5FWT/xOKqo17GXnfg
	C2Rg==
X-Gm-Message-State: ALQs6tBCymz8OhYvsJ++ZgibWKsJKPrnb0FG/E9DaZU4LhZ58+L+mXJh
	5OG1LSFLT5YrKx8DGWAccoWnen8G89Z4mO99TW4ns0Q7
X-Google-Smtp-Source: AB8JxZoiU5DkZiAkQtK2x/mZSPGVgNn743yEFMUeMOnoEL1GbbaP3Z4MqJZP0GTn60e+g07c2KSYekytSZ0qtAnUwF4=
X-Received: by 2002:a24:730e:: with SMTP id
	y14-v6mr30129885itb.45.1525444150648; 
	Fri, 04 May 2018 07:29:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b04:0:0:0:0:0 with HTTP;
	Fri, 4 May 2018 07:29:10 -0700 (PDT)
In-Reply-To: <CAALXFYzFeuLLM+V9ngH=V+K53DQnjaUX_piE6k4zECZ7jLEirw@mail.gmail.com>
References: <CAALXFYzFeuLLM+V9ngH=V+K53DQnjaUX_piE6k4zECZ7jLEirw@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 4 May 2018 16:29:10 +0200
Message-ID: <CAALXFYw2m97cBKiHDf0pqUu02NsixHuM4QJjtBxo2kx+BDGdow@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Writing a functional Dockerfile to run a container with a package revision (PR) server
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
X-List-Received-Date: Fri, 04 May 2018 14:29:13 -0000
Content-Type: multipart/alternative; boundary="000000000000b9777f056b6224c7"

--000000000000b9777f056b6224c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I found the right way to fix my issue. First I wrote this script:

    $ cat start.sh
    #! /bin/sh

    cd /home/yocto/poky
    source ./oe-init-build-env ../build
    bitbake-prserv --start --file /home/yocto/prserv/sqlite3.db --log
/tmp/prserv.log --port 8585
    tail -f /tmp/prserv.log

And after modified the Dockerfile adding this stuff:

    ADD start.sh /home/yocto/start.sh
    RUN chmod 755 /home/yocto/start.sh
    RUN chown yocto.yocto /home/yocto/start.sh
    ...
    CMD /home/yocto/start.sh

Now it works as expected. Hope this helps somebody else!



2018-05-04 15:57 GMT+02:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:

> The purpose is deploying a yocto PR server using a docker container. More
> info about PR server can be found in the following link: https://wiki.
> yoctoproject.org/wiki/PR_Service
>
> To try doing that I wrote this "Dockerfile" to generate a docker image:
>
> FROM ubuntu:16.04
> MAINTAINER Yocto <yocto@mydomain.com>
>
> # Update, upgrade and install
> RUN apt-get update
> RUN apt-get upgrade -y
> RUN apt-get install -y gawk wget git git-core diffstat unzip texinfo
> gcc-multilib build-essential chrpath socat xterm curl parted python pytho=
n3
> python3-pip python3-pexpect xz-utils debianutils iputils-ping libsdl1.2-d=
ev
> net-tools
>
> # Set up locales
> RUN apt-get -y install locales apt-utils sudo && dpkg-reconfigure locales
> && locale-gen en_US.UTF-8 && update-locale LC_ALL=3Den_US.UTF-8
> LANG=3Den_US.UTF-8
> ENV LANG en_US.utf8
>
> # Clean up APT when done
> RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
>
> # Replace dash with bash
> RUN rm /bin/sh && ln -s bash /bin/sh
>
> # Yocto user management
> RUN groupadd -g 1000 yocto && useradd -u 1000 -g 1000 -ms /bin/bash yocto
> && usermod -a -G sudo yocto && usermod -a -G users yocto
> ENV HOME /home/yocto
> USER yocto
>
> # Download poky
> RUN git clone --branch rocko git://git.yoctoproject.org/poky
> /home/yocto/poky
>
> # Create some directories
> RUN mkdir -p /home/yocto/build /home/yocto/prserv
>
> # Make /home/yocto/poky the working directory
> WORKDIR /home/yocto/poky
>
> # Expose listen port
> EXPOSE 8585
>
> # Run PR-server
> CMD /bin/sh -c " \
>     source ./oe-init-build-env ../build \
>     && bitbake-prserv --start --file /home/yocto/prserv/sqlite3.db --log
> /tmp/prserv.log --port 8585 \
> "
> Using previous Dockerfile I build a docker image:
>
> $ docker build -t docker-prserver .
> [...]
> Successfully built 362f4599b1b6
> Successfully tagged docker-prserver:latest
>
> As you can see before, the process ends successfully. After that, I run a
> container:
>
> $ docker run -ti docker-prserver
> yocto@b3c9fd06d8af:~/poky$
>
> The previous command creates a shell. I check if the process
> =E2=80=9Cbitbake-prserver=E2=80=9D is running:
>
> $ netstat -nat
> Active Internet connections (servers and established)
> Proto Recv-Q Send-Q Local Address           Foreign Address         State
>
> As you can see, the =E2=80=9Cbitbake-prserver=E2=80=9D process is not run=
ning (no listen
> port). However, if I log into the container and execute the CMD command:
>
> yocto@b3c9fd06d8af:~/poky/build$ source ./oe-init-build-env ../build/ &&
> bitbake-prserv --start --file /home/yocto/prserv/sqlite3.db --log
> /tmp/prserv.log --port 8585
>
> Then it works fine:
>
> yocto@b3c9fd06d8af:~$ netstat -nat
> Active Internet connections (servers and established)
> Proto Recv-Q Send-Q Local Address           Foreign Address    State
> tcp        0      0 0.0.0.0:8585            0.0.0.0:*          LISTEN
>
> It=E2=80=99s supposed that CMD is executed when the container is instanti=
ated, but
> this is not happening. What is the right way to write a Dockerfile to run=
 a
> bitbake-prserv server listening on the exposed port?
>
> Hope some of you have some experience on this and can provide some useful
> feedback.
>
> Thanks a lot in advance! :)
>
>


--=20




*NOTA LEGAL*
Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al mism=
o,
contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente diri=
gida a su
destinatario y se encuentra protegido por Ley. Cualquier persona distinta
de su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=
=B3n, copia
o impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3ni=
co por
error, se ruega lo notifique de inmediato al remitente borrando el mensaje
original juntamente con sus ficheros anexos. Gracias.

De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza la
adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento
confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le info=
rmamos de
la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad de NAY=
AR
SYSTEMS SL, con la finalidad de poder atender los compromisos derivados de
la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer sus
derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n m=
ediante un
escrito a la siguiente direcci=C3=B3n: info@nayarsystems.com

*LEGAL NOTE*
This email and any attachments to it contains is confidential information
exclusively intended for the recipients. Any divulgation, copy or
distribution to third parties is prohibited without written permission of
NAYAR SYSTEMS SL. If you have received this e-mail in error, please notify
the sender immediately. In accordance with Law 15/1999 of 13 December on
the Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it
has adopted the necessary measures to ensure the confidential treatment of
personal information. We also inform you that you can exercise your access,
rectification, cancellation and opposition rights by send us a mail to:
info@nayarsystems.com

--000000000000b9777f056b6224c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I found the right way to fix my issue. First I wrote =
this script:</div><div><br></div><div>=C2=A0 =C2=A0 $ cat start.sh=C2=A0</d=
iv><div>=C2=A0 =C2=A0 #! /bin/sh</div><div><br></div><div>=C2=A0 =C2=A0 cd =
/home/yocto/poky</div><div>=C2=A0 =C2=A0 source ./oe-init-build-env ../buil=
d</div><div>=C2=A0 =C2=A0 bitbake-prserv --start --file /home/yocto/prserv/=
sqlite3.db --log /tmp/prserv.log --port 8585</div><div>=C2=A0 =C2=A0 tail -=
f /tmp/prserv.log</div><div><br></div><div>And after modified the Dockerfil=
e adding this stuff:</div><div><br></div><div><div>=C2=A0 =C2=A0 ADD start.=
sh /home/yocto/start.sh</div><div>=C2=A0 =C2=A0 RUN chmod 755 /home/yocto/s=
tart.sh</div><div>=C2=A0 =C2=A0 RUN chown yocto.yocto /home/yocto/start.sh<=
/div><div>=C2=A0 =C2=A0 ...</div><div>=C2=A0 =C2=A0 CMD /home/yocto/start.s=
h<br></div></div><div><br></div><div>Now it works as expected. Hope this he=
lps somebody else!=C2=A0</div><div><br></div><div><br></div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-05-04 15:57 GMT+02:00=
 Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsy=
stems.com" target=3D"_blank">icastell@nayarsystems.com</a>&gt;</span>:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>The purpose is dep=
loying a yocto PR server using a docker container. More info about PR serve=
r can be found in the following link:=C2=A0<a href=3D"https://wiki.yoctopro=
ject.org/wiki/PR_Service" target=3D"_blank">https://wiki.<wbr>yoctoproject.=
org/wiki/PR_<wbr>Service</a></div><div><br></div><div>To try doing that I w=
rote this &quot;Dockerfile&quot; to generate a docker image:</div><div><br>=
</div><div>FROM ubuntu:16.04</div><div>MAINTAINER Yocto &lt;<a href=3D"mail=
to:yocto@mydomain.com" target=3D"_blank">yocto@mydomain.com</a>&gt;</div><d=
iv><br></div><div># Update, upgrade and install</div><div>RUN apt-get updat=
e</div><div>RUN apt-get upgrade -y</div><div>RUN apt-get install -y gawk wg=
et git git-core diffstat unzip texinfo gcc-multilib build-essential chrpath=
 socat xterm curl parted python python3 python3-pip python3-pexpect xz-util=
s debianutils iputils-ping libsdl1.2-dev net-tools</div><div><br></div><div=
># Set up locales</div><div>RUN apt-get -y install locales apt-utils sudo &=
amp;&amp; dpkg-reconfigure locales &amp;&amp; locale-gen en_US.UTF-8 &amp;&=
amp; update-locale LC_ALL=3Den_US.UTF-8 LANG=3Den_US.UTF-8</div><div>ENV LA=
NG en_US.utf8</div><div><br></div><div># Clean up APT when done</div><div>R=
UN apt-get clean &amp;&amp; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*</=
div><div><br></div><div># Replace dash with bash</div><div>RUN rm /bin/sh &=
amp;&amp; ln -s bash /bin/sh</div><div><br></div><div># Yocto user manageme=
nt</div><div>RUN groupadd -g 1000 yocto &amp;&amp; useradd -u 1000 -g 1000 =
-ms /bin/bash yocto &amp;&amp; usermod -a -G sudo yocto &amp;&amp; usermod =
-a -G users yocto</div><div>ENV HOME /home/yocto</div><div>USER yocto</div>=
<div><br></div><div># Download poky</div><div>RUN git clone --branch rocko =
git://<a href=3D"http://git.yoctoproject.org/poky" target=3D"_blank">git.yo=
ctoproject.org/<wbr>poky</a> /home/yocto/poky</div><div><br></div><div># Cr=
eate some directories</div><div>RUN mkdir -p /home/yocto/build /home/yocto/=
prserv</div><div><br></div><div># Make /home/yocto/poky the working directo=
ry</div><div>WORKDIR /home/yocto/poky</div><div><br></div><div># Expose lis=
ten port</div><div>EXPOSE 8585</div><div><br></div><div># Run PR-server</di=
v><div>CMD /bin/sh -c &quot; \</div><div>=C2=A0 =C2=A0 source ./oe-init-bui=
ld-env ../build \</div><div>=C2=A0 =C2=A0 &amp;&amp; bitbake-prserv --start=
 --file /home/yocto/prserv/sqlite3.db --log /tmp/prserv.log --port 8585 \</=
div><div>&quot;</div><div>Using previous Dockerfile I build a docker image:=
</div><div><br></div><div>$ docker build -t docker-prserver .</div><div>[..=
.]</div><div>Successfully built 362f4599b1b6</div><div>Successfully tagged =
docker-prserver:latest</div><div><br></div><div>As you can see before, the =
process ends successfully. After that, I run a container:</div><div><br></d=
iv><div>$ docker run -ti docker-prserver</div><div>yocto@b3c9fd06d8af:~/pok=
y$</div><div><br></div><div>The previous command creates a shell. I check i=
f the process =E2=80=9Cbitbake-prserver=E2=80=9D is running:</div><div><br>=
</div><div>$ netstat -nat</div><div>Active Internet connections (servers an=
d established)</div><div>Proto Recv-Q Send-Q Local Address=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0Foreign Address=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0St=
ate=C2=A0</div><div><br></div><div>As you can see, the =E2=80=9Cbitbake-prs=
erver=E2=80=9D process is not running (no listen port). However, if I log i=
nto the container and execute the CMD command:</div><div><br></div><div>yoc=
to@b3c9fd06d8af:~/poky/<wbr>build$ source ./oe-init-build-env ../build/ &am=
p;&amp; bitbake-prserv --start --file /home/yocto/prserv/sqlite3.db --log /=
tmp/prserv.log --port 8585</div><div><br></div><div>Then it works fine:</di=
v><div><br></div><div>yocto@b3c9fd06d8af:~$ netstat -nat</div><div>Active I=
nternet connections (servers and established)</div><div>Proto Recv-Q Send-Q=
 Local Address=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Foreign Address=C2=
=A0 =C2=A0 State=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>tcp=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 <a href=3D"http://0.0.0.0:8585" target=
=3D"_blank">0.0.0.0:8585</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0.0.0=
.0:*=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LISTEN=C2=A0 =C2=A0 =C2=A0</div><div=
><br></div><div>It=E2=80=99s supposed that CMD is executed when the contain=
er is instantiated, but this is not happening. What is the right way to wri=
te a Dockerfile to run a bitbake-prserv server listening on the exposed por=
t?</div><div><br></div><div>Hope some of you have some experience on this a=
nd can provide some useful feedback.</div><div><br></div><div>Thanks a lot =
in advance! :)</div><div><br></div></div>
</div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><br><img src=3D"htt=
p://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font size=3D"2"><b>=
</b></font><br><div><span><font size=3D"1"><span style=3D"color:rgb(153,153=
,153)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3nico y, en s=
u caso, cualquier fichero anexo al mismo, contiene informaci=C3=B3n de car=
=C3=A1cter confidencial exclusivamente dirigida a su destinatario y se encu=
entra protegido por Ley. Cualquier persona distinta de su destinataria tien=
e prohibida su reproducci=C3=B3n, uso, divulgaci=C3=B3n, copia o impresi=C3=
=B3n total o parcial. Si ha recibido este correo electr=C3=B3nico por error=
, se ruega lo notifique de inmediato al remitente borrando el mensaje origi=
nal juntamente con sus ficheros anexos. Gracias.<br><br>De conformidad con =
lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza la adopci=C3=B3n de l=
as medidas necesarias para asegurar el tratamiento confidencial de los dato=
s de car=C3=A1cter personal. As=C3=AD mismo le informamos de la inclusi=C3=
=B3n de sus datos en un fichero bajo la responsabilidad de NAYAR SYSTEMS SL=
, con la finalidad de poder atender los compromisos derivados de la relaci=
=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer sus derechos d=
e acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante un=
 escrito a la siguiente direcci=C3=B3n:=C2=A0<a style=3D"color:rgb(17,85,20=
4)" href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@nayarsyste=
ms.com</a></span><br><br></font></span></div><div><span style=3D"color:rgb(=
153,153,153);font-family:arial,helvetica,sans-serif;font-size:x-small"><u><=
b>LEGAL NOTE</b></u></span></div><div><span style=3D"color:rgb(153,153,153)=
;font-family:arial,helvetica,sans-serif;font-size:x-small">This email and a=
ny attachments to it contains is confidential information exclusively inten=
ded for the recipients. Any divulgation, copy or distribution to third part=
ies is prohibited without written permission of NAYAR SYSTEMS SL. If you ha=
ve received this e-mail in error, please notify the sender immediately. In =
accordance with Law 15/1999 of 13 December on the Protection of Personal Da=
ta, the NAYAR SYSTEMS SL guarantees that it has adopted the necessary measu=
res to ensure the confidential treatment of personal information. We also i=
nform you that you can exercise your access, rectification, cancellation an=
d opposition rights by send us a mail to:=C2=A0<a href=3D"mailto:info@nayar=
systems.com" target=3D"_blank">info@nayarsystems.com</a></span></div><br></=
div>
</div>

--000000000000b9777f056b6224c7--
