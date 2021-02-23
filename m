Subject: Adding USB modem support to Yocto #raspberrypi
To: yocto@lists.yoctoproject.org
From: jose_amador95@hotmail.com
X-Originating-Location: Veracruz, MX (201.138.29.119)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Feb 2021 11:41:23 -0800
Message-ID: <ujcs.1614109283763279804.MYvC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BBBMvg0DkfnojuIUqnZF"

--BBBMvg0DkfnojuIUqnZF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!
I'm a new Yocto user trying to develop a fork of Chirpstack's Gateway OS (=
 https://github.com/brocaar/chirpstack-gateway-os ) for Raspberry Pi based =
LoRaWAN gateways. Although I have successfully modified and added new recip=
es, I'm struggling with adding a USB cellular modem to my image.

I have a Huawei E303C USB modem and followed the instructions from the Emb=
exus website ( https://embexus.com/2017/06/04/add-a-mobile-broadband-connec=
tivity-to-embedded-linux/ ) with no success. It basically proposes using oF=
ono + connman to create a network interface, but after running the instruct=
ed commands, I get this error:

$ sudo /usr/lib/ofono/test/activate-context
Error activating /huawei_0/context1: org.ofono.Error.NotImplemented: Imple=
mentation not provided

As an additional step, I enabled roaming using the set-roaming-allowed scr=
ipt in the oFono tests directory. I made the kernel configuration in layers=
 ( https://github.com/brocaar/chirpstack-gateway-os/tree/master/layers ) / =
targets ( https://github.com/brocaar/chirpstack-gateway-os/tree/master/laye=
rs/targets ) / meta-raspberrypi ( https://github.com/brocaar/chirpstack-gat=
eway-os/tree/master/layers/targets/meta-raspberrypi ) / recipes-kernel ( ht=
tps://github.com/brocaar/chirpstack-gateway-os/tree/master/layers/targets/m=
eta-raspberrypi/recipes-kernel ) / linux ( https://github.com/brocaar/chirp=
stack-gateway-os/tree/master/layers/targets/meta-raspberrypi/recipes-kernel=
/linux ) /linux-raspberrypi_%.bbappend and the connman package conf igurati=
on in meta ( https://github.com/brocaar/chirpstack-gateway-os/tree/master/m=
eta ) / conf ( https://github.com/brocaar/chirpstack-gateway-os/tree/master=
/meta/conf ) / distro ( https://github.com/brocaar/chirpstack-gateway-os/tr=
ee/master/meta/conf/distro ) /chirpstack-gateway-os.conf.

I considered installing NetworkManager from the OpenEmbedded layer. Still,=
 it has a declared conflict with connman, which is used to set a WIFI AP, a=
nd I don't want to remove that feature.

This is the output from the list-modems script:
[ /huawei_0 ]
Online =3D 1
Powered =3D 1
Lockdown =3D 0
Emergency =3D 0
Manufacturer =3D huawei
Model =3D E303C
Revision =3D 21.157.01.01.18
Serial =3D 867360018081349
SystemPath =3D /sys/devices/platform/soc/3f980000.usb/usb1/1-1/1-1.3
Interfaces =3D org.ofono.CellBroadcast org.ofono.NetworkRegistration org.o=
fono.SupplementaryServices org.ofono.CallBarring org.ofono.CallSettings org=
.ofono.CallForwarding org.ofono.MessageWaiting org.ofono.ConnectionManager =
org.ofono.SmartMessaging org.ofono.PushNotification org.ofono.MessageManage=
r org.ofono.RadioSettings org.ofono.Phonebook org.ofono.AudioSettings org.o=
fono.VoiceCallManager org.ofono.AllowedAccessPoints org.ofono.SimManager
Features =3D cbs net ussd gprs sms rat sim
Type =3D hardware
[ org.ofono.CellBroadcast ]
Powered =3D 0
Topics =3D 2,4,36,50,118,135,255,555,569
[ org.ofono.NetworkRegistration ]
Status =3D roaming
Mode =3D auto
Technology =3D umts
MobileCountryCode =3D 334
MobileNetworkCode =3D 020
Name =3D EMnify (Mx Telcel GSM)
Strength =3D 41
[ org.ofono.SupplementaryServices ]
State =3D idle
[ org.ofono.CallBarring ]
VoiceOutgoing =3D disabled
VoiceIncoming =3D disabled
[ org.ofono.CallSettings ]
CallingLinePresentation =3D enabled
CallingNamePresentation =3D unknown
ConnectedLinePresentation =3D disabled
ConnectedLineRestriction =3D unknown
CalledLinePresentation =3D disabled
CallingLineRestriction =3D off
HideCallerId =3D default
VoiceCallWaiting =3D disabled
[ org.ofono.CallForwarding ]
VoiceUnconditional =3D
VoiceBusy =3D
VoiceNoReply =3D
VoiceNoReplyTimeout =3D 20
VoiceNotReachable =3D
ForwardingFlagOnSim =3D 0
[ org.ofono.MessageWaiting ]
VoicemailWaiting =3D 0
VoicemailMessageCount =3D 0
VoicemailMailboxNumber =3D
[ org.ofono.ConnectionManager ]
Attached =3D 1
Bearer =3D umts
RoamingAllowed =3D 1
Powered =3D 1
Suspended =3D 0
[ org.ofono.SmartMessaging ]
[ org.ofono.PushNotification ]
[ org.ofono.MessageManager ]
ServiceCenterAddress =3D +42379010570
UseDeliveryReports =3D 0
Bearer =3D cs-preferred
Alphabet =3D default
[ org.ofono.RadioSettings ]
[ org.ofono.Phonebook ]
[ org.ofono.AudioSettings ]
Active =3D 0
[ org.ofono.VoiceCallManager ]
EmergencyNumbers =3D 118 110 08 911 000 112 999 119
[ org.ofono.AllowedAccessPoints ]
[ org.ofono.SimManager ]
Present =3D 1
CardIdentifier =3D 89883030000055775206
SubscriberIdentity =3D 295050901033049
ServiceProviderName =3D EMnify
FixedDialing =3D 0
BarredDialing =3D 0
MobileCountryCode =3D 295
MobileNetworkCode =3D 05
SubscriberNumbers =3D
LockedPins =3D
PreferredLanguages =3D de en
PinRequired =3D none
Retries =3D [pin =3D 3] [pin2 =3D 3] [puk =3D 10] [puk2 =3D 10]
CardSlotCount =3D 1
ActiveCardSlot =3D 1

--BBBMvg0DkfnojuIUqnZF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi!<br />I'm a new Yocto user trying to develop a fork of <a href=3D"htt=
ps://github.com/brocaar/chirpstack-gateway-os" target=3D"_blank" rel=3D"noo=
pener">Chirpstack's Gateway OS</a> for Raspberry Pi based LoRaWAN gateways.=
 Although I have successfully modified and added new recipes, I'm strugglin=
g with adding a USB cellular modem to my image.<br /><br />I have a Huawei =
E303C USB modem and followed the instructions from the <a href=3D"https://e=
mbexus.com/2017/06/04/add-a-mobile-broadband-connectivity-to-embedded-linux=
/" target=3D"_blank" rel=3D"noopener">Embexus website</a> with no success. =
It basically proposes using oFono + connman to create a network interface, =
but after running the instructed commands, I get this error:<br /><br /><em=
>$ sudo /usr/lib/ofono/test/activate-context </em><br /><em>Error activatin=
g /huawei_0/context1: org.ofono.Error.NotImplemented: Implementation not pr=
ovided</em><br /><br />As an additional step, I enabled roaming using the s=
et-roaming-allowed script in the oFono tests directory. I made the kernel c=
onfiguration in <span style=3D"font-size: 11pt;"><a href=3D"https://github.=
com/brocaar/chirpstack-gateway-os/tree/master/layers" data-pjax=3D"true">la=
yers</a>/<a href=3D"https://github.com/brocaar/chirpstack-gateway-os/tree/m=
aster/layers/targets" data-pjax=3D"true">targets</a>/<a href=3D"https://git=
hub.com/brocaar/chirpstack-gateway-os/tree/master/layers/targets/meta-raspb=
errypi" data-pjax=3D"true">meta-raspberrypi</a>/<a href=3D"https://github.c=
om/brocaar/chirpstack-gateway-os/tree/master/layers/targets/meta-raspberryp=
i/recipes-kernel" data-pjax=3D"true">recipes-kernel</a>/<a href=3D"https://=
github.com/brocaar/chirpstack-gateway-os/tree/master/layers/targets/meta-ra=
spberrypi/recipes-kernel/linux" data-pjax=3D"true">linux</a>/linux-raspberr=
ypi_%.bbappend and the connman package conf</span>iguration in <span style=
=3D"font-size: 11pt;"><a href=3D"https://github.com/brocaar/chirpstack-gat=
eway-os/tree/master/meta" data-pjax=3D"true">meta</a>/<a href=3D"https://gi=
thub.com/brocaar/chirpstack-gateway-os/tree/master/meta/conf" data-pjax=3D"=
true">conf</a>/<a href=3D"https://github.com/brocaar/chirpstack-gateway-os/=
tree/master/meta/conf/distro" data-pjax=3D"true">distro</a>/chirpstack-gate=
way-os.conf.</span></p>
<p>&nbsp;</p>
<p><br />I considered installing NetworkManager from the OpenEmbedded laye=
r. Still, it has a declared conflict with connman, which is used to set a W=
IFI AP, and I don't want to remove that feature. <br /><br />This is the ou=
tput from the <em>list-modems</em> script:<br />[ /huawei_0 ]<br />&nbsp;&n=
bsp;&nbsp; Online =3D 1<br />&nbsp;&nbsp;&nbsp; Powered =3D 1<br />&nbsp;&n=
bsp;&nbsp; Lockdown =3D 0<br />&nbsp;&nbsp;&nbsp; Emergency =3D 0<br />&nbs=
p;&nbsp;&nbsp; Manufacturer =3D huawei<br />&nbsp;&nbsp;&nbsp; Model =3D E3=
03C<br />&nbsp;&nbsp;&nbsp; Revision =3D 21.157.01.01.18<br />&nbsp;&nbsp;&=
nbsp; Serial =3D 867360018081349<br />&nbsp;&nbsp;&nbsp; SystemPath =3D /sy=
s/devices/platform/soc/3f980000.usb/usb1/1-1/1-1.3<br />&nbsp;&nbsp;&nbsp; =
Interfaces =3D org.ofono.CellBroadcast org.ofono.NetworkRegistration org.of=
ono.SupplementaryServices org.ofono.CallBarring org.ofono.CallSettings org.=
ofono.CallForwarding org.ofono.MessageWaiting org.ofono.ConnectionManager o=
rg.ofono.SmartMessaging org.ofono.PushNotification org.ofono.MessageManager=
 org.ofono.RadioSettings org.ofono.Phonebook org.ofono.AudioSettings org.of=
ono.VoiceCallManager org.ofono.AllowedAccessPoints org.ofono.SimManager <br=
 />&nbsp;&nbsp;&nbsp; Features =3D cbs net ussd gprs sms rat sim <br />&nbs=
p;&nbsp;&nbsp; Type =3D hardware<br />&nbsp;&nbsp;&nbsp; [ org.ofono.CellBr=
oadcast ]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Powered =3D 0<br =
/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Topics =3D 2,4,36,50,118,135,2=
55,555,569<br />&nbsp;&nbsp;&nbsp; [ org.ofono.NetworkRegistration ]<br />&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Status =3D roaming<br />&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mode =3D auto<br />&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; Technology =3D umts<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; MobileCountryCode =3D 334<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; MobileNetworkCode =3D 020<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; Name =3D EMnify (Mx Telcel GSM)<br />&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; Strength =3D 41<br />&nbsp;&nbsp;&nbsp; [ org.ofono.Supple=
mentaryServices ]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State =3D=
 idle<br />&nbsp;&nbsp;&nbsp; [ org.ofono.CallBarring ]<br />&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; VoiceOutgoing =3D disabled<br />&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; VoiceIncoming =3D disabled<br />&nbsp;&nbsp;&n=
bsp; [ org.ofono.CallSettings ]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; CallingLinePresentation =3D enabled<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; CallingNamePresentation =3D unknown<br />&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; ConnectedLinePresentation =3D disabled<br />&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ConnectedLineRestriction =3D unknown<br =
/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CalledLinePresentation =3D dis=
abled<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CallingLineRestrictio=
n =3D off<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HideCallerId =3D =
default<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VoiceCallWaiting =
=3D disabled<br />&nbsp;&nbsp;&nbsp; [ org.ofono.CallForwarding ]<br />&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VoiceUnconditional =3D <br />&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VoiceBusy =3D <br />&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; VoiceNoReply =3D <br />&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; VoiceNoReplyTimeout =3D 20<br />&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; VoiceNotReachable =3D <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; ForwardingFlagOnSim =3D 0<br />&nbsp;&nbsp;&nbsp; [ org.ofono.M=
essageWaiting ]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VoicemailWa=
iting =3D 0<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VoicemailMessag=
eCount =3D 0<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VoicemailMailb=
oxNumber =3D <br />&nbsp;&nbsp;&nbsp; [ org.ofono.ConnectionManager ]<br />=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Attached =3D 1<br />&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bearer =3D umts<br />&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; RoamingAllowed =3D 1<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; Powered =3D 1<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 Suspended =3D 0<br />&nbsp;&nbsp;&nbsp; [ org.ofono.SmartMessaging ]<br />=
&nbsp;&nbsp;&nbsp; [ org.ofono.PushNotification ]<br />&nbsp;&nbsp;&nbsp; [=
 org.ofono.MessageManager ]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 ServiceCenterAddress =3D +42379010570<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; UseDeliveryReports =3D 0<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; Bearer =3D cs-preferred<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; Alphabet =3D default<br />&nbsp;&nbsp;&nbsp; [ org.ofono.RadioSettin=
gs ]<br />&nbsp;&nbsp;&nbsp; [ org.ofono.Phonebook ]<br />&nbsp;&nbsp;&nbsp=
; [ org.ofono.AudioSettings ]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; Active =3D 0<br />&nbsp;&nbsp;&nbsp; [ org.ofono.VoiceCallManager ]<br /=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; EmergencyNumbers =3D 118 110 08=
 911 000 112 999 119 <br />&nbsp;&nbsp;&nbsp; [ org.ofono.AllowedAccessPoin=
ts ]<br />&nbsp;&nbsp;&nbsp; [ org.ofono.SimManager ]<br />&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; Present =3D 1<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; CardIdentifier =3D 89883030000055775206<br />&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; SubscriberIdentity =3D 295050901033049<br />&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ServiceProviderName =3D EMnify<br />=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FixedDialing =3D 0<br />&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BarredDialing =3D 0<br />&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; MobileCountryCode =3D 295<br />&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; MobileNetworkCode =3D 05<br />&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; SubscriberNumbers =3D <br />&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; LockedPins =3D <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; PreferredLanguages =3D de en <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; PinRequired =3D none<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; Retries =3D [pin =3D 3] [pin2 =3D 3] [puk =3D 10] [puk2 =3D 10] <br =
/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CardSlotCount =3D 1<br />&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ActiveCardSlot =3D 1<br /><br /><br /=
><br /></p>

--BBBMvg0DkfnojuIUqnZF--
